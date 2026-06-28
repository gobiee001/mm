.class public final Lcom/google/android/gms/internal/zzid;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzbat:Ljava/lang/Runnable;

.field private zzbau:Lcom/google/android/gms/internal/zzik;

.field private zzbav:Lcom/google/android/gms/internal/zzio;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzie;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzie;-><init>(Lcom/google/android/gms/internal/zzid;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbat:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzid;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private final connect()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbau:Lcom/google/android/gms/internal/zzik;

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzig;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzig;-><init>(Lcom/google/android/gms/internal/zzid;)V

    new-instance v2, Lcom/google/android/gms/internal/zzih;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzih;-><init>(Lcom/google/android/gms/internal/zzid;)V

    new-instance v3, Lcom/google/android/gms/internal/zzik;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzid;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzew()Lcom/google/android/gms/internal/zzajf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzajf;->zzqs()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/google/android/gms/internal/zzik;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzid;->zzbau:Lcom/google/android/gms/internal/zzik;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbau:Lcom/google/android/gms/internal/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd;->zzakj()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final disconnect()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbau:Lcom/google/android/gms/internal/zzik;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbau:Lcom/google/android/gms/internal/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbau:Lcom/google/android/gms/internal/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbau:Lcom/google/android/gms/internal/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd;->disconnect()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbau:Lcom/google/android/gms/internal/zzik;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbav:Lcom/google/android/gms/internal/zzio;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzik;)Lcom/google/android/gms/internal/zzik;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbau:Lcom/google/android/gms/internal/zzik;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzio;)Lcom/google/android/gms/internal/zzio;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzid;->zzbav:Lcom/google/android/gms/internal/zzio;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzid;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzid;->disconnect()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzid;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzid;->connect()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzid;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzid;)Lcom/google/android/gms/internal/zzik;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbau:Lcom/google/android/gms/internal/zzik;

    return-object v0
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzid;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbqh:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzid;->connect()V

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbqg:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzif;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzif;-><init>(Lcom/google/android/gms/internal/zzid;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzel()Lcom/google/android/gms/internal/zzhg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhj;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzil;)Lcom/google/android/gms/internal/zzii;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbav:Lcom/google/android/gms/internal/zzio;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzii;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzii;-><init>()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzbav:Lcom/google/android/gms/internal/zzio;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzio;->zza(Lcom/google/android/gms/internal/zzil;)Lcom/google/android/gms/internal/zzii;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Unable to call into cache service."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzagf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/zzii;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzii;-><init>()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final zzhe()V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbqi:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzid;->connect()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzid;->zzbat:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    sget-object v2, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzid;->zzbat:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbqj:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
