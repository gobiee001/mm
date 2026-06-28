.class public Lcom/google/android/gms/internal/zzaqc;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzdtd:Lcom/google/android/gms/internal/zzaqc;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzata:Lcom/google/android/gms/common/util/zzd;

.field private final zzdte:Landroid/content/Context;

.field private final zzdtf:Lcom/google/android/gms/internal/zzard;

.field private final zzdtg:Lcom/google/android/gms/internal/zzarv;

.field private final zzdth:Lcom/google/android/gms/analytics/zzj;

.field private final zzdti:Lcom/google/android/gms/internal/zzapr;

.field private final zzdtj:Lcom/google/android/gms/internal/zzari;

.field private final zzdtk:Lcom/google/android/gms/internal/zzasm;

.field private final zzdtl:Lcom/google/android/gms/internal/zzarz;

.field private final zzdtm:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final zzdtn:Lcom/google/android/gms/internal/zzaqu;

.field private final zzdto:Lcom/google/android/gms/internal/zzapq;

.field private final zzdtp:Lcom/google/android/gms/internal/zzaqn;

.field private final zzdtq:Lcom/google/android/gms/internal/zzarh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaqe;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqe;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqe;->zzxg()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaqc;->zzdte:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzamg()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaqc;->zzata:Lcom/google/android/gms/common/util/zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzard;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzard;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtf:Lcom/google/android/gms/internal/zzard;

    new-instance v1, Lcom/google/android/gms/internal/zzarv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzarv;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaqa;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtg:Lcom/google/android/gms/internal/zzarv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqc;->zzwt()Lcom/google/android/gms/internal/zzarv;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzaqb;->VERSION:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x86

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Google Analytics "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzapz;->zzdw(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzarz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzarz;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaqa;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtl:Lcom/google/android/gms/internal/zzarz;

    new-instance v1, Lcom/google/android/gms/internal/zzasm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzasm;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaqa;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtk:Lcom/google/android/gms/internal/zzasm;

    new-instance v1, Lcom/google/android/gms/internal/zzapr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzapr;-><init>(Lcom/google/android/gms/internal/zzaqc;Lcom/google/android/gms/internal/zzaqe;)V

    new-instance v2, Lcom/google/android/gms/internal/zzaqu;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzaqu;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    new-instance v3, Lcom/google/android/gms/internal/zzapq;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzapq;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    new-instance v4, Lcom/google/android/gms/internal/zzaqn;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzaqn;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    new-instance v5, Lcom/google/android/gms/internal/zzarh;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzarh;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzj;->zzbl(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/internal/zzaqd;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/zzaqd;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/analytics/zzj;->zza(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdth:Lcom/google/android/gms/analytics/zzj;

    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaqa;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtn:Lcom/google/android/gms/internal/zzaqu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaqa;->initialize()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzaqc;->zzdto:Lcom/google/android/gms/internal/zzapq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzaqa;->initialize()V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtp:Lcom/google/android/gms/internal/zzaqn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzaqa;->initialize()V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtq:Lcom/google/android/gms/internal/zzarh;

    new-instance v2, Lcom/google/android/gms/internal/zzari;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzari;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaqa;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtj:Lcom/google/android/gms/internal/zzari;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaqa;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaqc;->zzdti:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtm:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapr;->start()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzaqa;)V
    .locals 2

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->isInitialized()Z

    move-result v0

    const-string v1, "Analytics service not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public static zzbm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaqc;
    .locals 8

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzaqc;->zzdtd:Lcom/google/android/gms/internal/zzaqc;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzaqc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzaqc;->zzdtd:Lcom/google/android/gms/internal/zzaqc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzamg()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/zzaqe;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzaqe;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/internal/zzaqc;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzaqc;-><init>(Lcom/google/android/gms/internal/zzaqe;)V

    sput-object v5, Lcom/google/android/gms/internal/zzaqc;->zzdtd:Lcom/google/android/gms/internal/zzaqc;

    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzur()V

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v0, Lcom/google/android/gms/internal/zzarl;->zzdxm:Lcom/google/android/gms/internal/zzarm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarm;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzaqc;->zzwt()Lcom/google/android/gms/internal/zzarv;

    move-result-object v0

    const-string v4, "Slow initialization (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/zzapz;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzaqc;->zzdtd:Lcom/google/android/gms/internal/zzaqc;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final zzws()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzata:Lcom/google/android/gms/common/util/zzd;

    return-object v0
.end method

.method public final zzwt()Lcom/google/android/gms/internal/zzarv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtg:Lcom/google/android/gms/internal/zzarv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqc;->zza(Lcom/google/android/gms/internal/zzaqa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtg:Lcom/google/android/gms/internal/zzarv;

    return-object v0
.end method

.method public final zzwu()Lcom/google/android/gms/internal/zzard;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtf:Lcom/google/android/gms/internal/zzard;

    return-object v0
.end method

.method public final zzwv()Lcom/google/android/gms/analytics/zzj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdth:Lcom/google/android/gms/analytics/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdth:Lcom/google/android/gms/analytics/zzj;

    return-object v0
.end method

.method public final zzwx()Lcom/google/android/gms/internal/zzapr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdti:Lcom/google/android/gms/internal/zzapr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqc;->zza(Lcom/google/android/gms/internal/zzaqa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdti:Lcom/google/android/gms/internal/zzapr;

    return-object v0
.end method

.method public final zzwy()Lcom/google/android/gms/internal/zzari;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtj:Lcom/google/android/gms/internal/zzari;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqc;->zza(Lcom/google/android/gms/internal/zzaqa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtj:Lcom/google/android/gms/internal/zzari;

    return-object v0
.end method

.method public final zzwz()Lcom/google/android/gms/internal/zzasm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtk:Lcom/google/android/gms/internal/zzasm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqc;->zza(Lcom/google/android/gms/internal/zzaqa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtk:Lcom/google/android/gms/internal/zzasm;

    return-object v0
.end method

.method public final zzxa()Lcom/google/android/gms/internal/zzarz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtl:Lcom/google/android/gms/internal/zzarz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqc;->zza(Lcom/google/android/gms/internal/zzaqa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtl:Lcom/google/android/gms/internal/zzarz;

    return-object v0
.end method

.method public final zzxd()Lcom/google/android/gms/internal/zzaqn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtp:Lcom/google/android/gms/internal/zzaqn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqc;->zza(Lcom/google/android/gms/internal/zzaqa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtp:Lcom/google/android/gms/internal/zzaqn;

    return-object v0
.end method

.method public final zzxe()Lcom/google/android/gms/internal/zzarh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtq:Lcom/google/android/gms/internal/zzarh;

    return-object v0
.end method

.method public final zzxg()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdte:Landroid/content/Context;

    return-object v0
.end method

.method public final zzxh()Lcom/google/android/gms/internal/zzarv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtg:Lcom/google/android/gms/internal/zzarv;

    return-object v0
.end method

.method public final zzxi()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtm:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtm:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isInitialized()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtm:Lcom/google/android/gms/analytics/GoogleAnalytics;

    return-object v0
.end method

.method public final zzxj()Lcom/google/android/gms/internal/zzarz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtl:Lcom/google/android/gms/internal/zzarz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtl:Lcom/google/android/gms/internal/zzarz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqa;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtl:Lcom/google/android/gms/internal/zzarz;

    goto :goto_0
.end method

.method public final zzxk()Lcom/google/android/gms/internal/zzapq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdto:Lcom/google/android/gms/internal/zzapq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqc;->zza(Lcom/google/android/gms/internal/zzaqa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdto:Lcom/google/android/gms/internal/zzapq;

    return-object v0
.end method

.method public final zzxl()Lcom/google/android/gms/internal/zzaqu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtn:Lcom/google/android/gms/internal/zzaqu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqc;->zza(Lcom/google/android/gms/internal/zzaqa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqc;->zzdtn:Lcom/google/android/gms/internal/zzaqu;

    return-object v0
.end method
