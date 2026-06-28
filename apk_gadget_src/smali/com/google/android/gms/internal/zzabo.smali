.class public final Lcom/google/android/gms/internal/zzabo;
.super Lcom/google/android/gms/internal/zzagb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static zzclt:Lcom/google/android/gms/ads/internal/js/zzn;

.field private static zzcqh:J

.field private static zzcqi:Z

.field private static zzcqj:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

.field private static zzcqk:Lcom/google/android/gms/ads/internal/gmsg/zzy;

.field private static zzcql:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzcjn:Ljava/lang/Object;

.field private final zzcmm:Lcom/google/android/gms/internal/zzzx;

.field private final zzcmn:Lcom/google/android/gms/internal/zzaau;

.field private zzcmp:Lcom/google/android/gms/internal/zzix;

.field private zzcqm:Lcom/google/android/gms/ads/internal/js/zzaa;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzabo;->zzcqh:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzabo;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzabo;->zzcqi:Z

    sput-object v4, Lcom/google/android/gms/internal/zzabo;->zzclt:Lcom/google/android/gms/ads/internal/js/zzn;

    sput-object v4, Lcom/google/android/gms/internal/zzabo;->zzcqj:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    sput-object v4, Lcom/google/android/gms/internal/zzabo;->zzcqk:Lcom/google/android/gms/ads/internal/gmsg/zzy;

    sput-object v4, Lcom/google/android/gms/internal/zzabo;->zzcql:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaau;Lcom/google/android/gms/internal/zzzx;Lcom/google/android/gms/internal/zzix;)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzagb;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabo;->zzcjn:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabo;->zzcmm:Lcom/google/android/gms/internal/zzzx;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabo;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzabo;->zzcmp:Lcom/google/android/gms/internal/zzix;

    sget-object v6, Lcom/google/android/gms/internal/zzabo;->sLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/zzabo;->zzcqi:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/gmsg/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzabo;->zzcqk:Lcom/google/android/gms/ads/internal/gmsg/zzy;

    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/zzaau;->zzaty:Lcom/google/android/gms/internal/zzakd;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)V

    sput-object v0, Lcom/google/android/gms/internal/zzabo;->zzcqj:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    new-instance v0, Lcom/google/android/gms/internal/zzabw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzabw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzabo;->zzcql:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabo;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaau;->zzaty:Lcom/google/android/gms/internal/zzakd;

    sget-object v3, Lcom/google/android/gms/internal/zznh;->zzbhm:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/zzabv;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzabv;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/zzabu;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzabu;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/js/zzn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;Lcom/google/android/gms/internal/zzaiq;Lcom/google/android/gms/internal/zzaiq;)V

    sput-object v0, Lcom/google/android/gms/internal/zzabo;->zzclt:Lcom/google/android/gms/ads/internal/js/zzn;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/zzabo;->zzcqi:Z

    :cond_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzabo;Lcom/google/android/gms/ads/internal/js/zzaa;)Lcom/google/android/gms/ads/internal/js/zzaa;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabo;->zzcqm:Lcom/google/android/gms/ads/internal/js/zzaa;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzabo;)Lcom/google/android/gms/internal/zzzx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabo;->zzcmm:Lcom/google/android/gms/internal/zzzx;

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaat;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjj;->extras:Landroid/os/Bundle;

    const-string v2, "sdk_less_server_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzes()Lcom/google/android/gms/internal/zzacq;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzabo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzacq;->zzo(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaco;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzabo;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/zzabz;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzabz;-><init>()V

    iput-object p1, v4, Lcom/google/android/gms/internal/zzabz;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    iput-object v0, v4, Lcom/google/android/gms/internal/zzabz;->zzcqw:Lcom/google/android/gms/internal/zzaco;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzacg;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzabz;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzabo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "request_id"

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "request_param"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v2, "adid"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lat"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzahn;->zzq(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Error grabbing device info: "

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzagf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_4
    const-string v4, "Cannot get advertising id info"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzagf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method protected static zza(Lcom/google/android/gms/ads/internal/js/zzc;)V
    .locals 2

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/internal/zzabo;->zzcqk:Lcom/google/android/gms/ads/internal/gmsg/zzy;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/internal/zzabo;->zzcqj:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/internal/zzabo;->zzcql:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzabo;)Lcom/google/android/gms/ads/internal/js/zzaa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabo;->zzcqm:Lcom/google/android/gms/ads/internal/js/zzaa;

    return-object v0
.end method

.method protected static zzb(Lcom/google/android/gms/ads/internal/js/zzc;)V
    .locals 2

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/internal/zzabo;->zzcqk:Lcom/google/android/gms/ads/internal/gmsg/zzy;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/internal/zzabo;->zzcqj:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/internal/zzabo;->zzcql:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzaat;)Lcom/google/android/gms/internal/zzaax;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    invoke-static {}, Lcom/google/android/gms/internal/zzahn;->zzqb()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzabo;->zza(Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeo()Lcom/google/android/gms/common/util/zzd;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/zzabo;->zzcqk:Lcom/google/android/gms/ads/internal/gmsg/zzy;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/internal/gmsg/zzy;->zzas(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/zzajr;->zzajw:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzabq;

    invoke-direct {v6, p0, v1, v0}, Lcom/google/android/gms/internal/zzabq;-><init>(Lcom/google/android/gms/internal/zzabo;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v0, Lcom/google/android/gms/internal/zzabo;->zzcqh:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeo()Lcom/google/android/gms/common/util/zzd;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    sub-long/2addr v0, v2

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzabo;->mContext:Landroid/content/Context;

    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/zzacg;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/zzaax;->errorCode:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaax;->body:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    goto :goto_0

    :cond_3
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method static synthetic zzno()Lcom/google/android/gms/ads/internal/gmsg/zzy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzabo;->zzcqk:Lcom/google/android/gms/ads/internal/gmsg/zzy;

    return-object v0
.end method

.method static synthetic zznp()Lcom/google/android/gms/ads/internal/js/zzn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzabo;->zzclt:Lcom/google/android/gms/ads/internal/js/zzn;

    return-object v0
.end method


# virtual methods
.method public final onStop()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabo;->zzcjn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzajr;->zzajw:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzabt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzabt;-><init>(Lcom/google/android/gms/internal/zzabo;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzdm()V
    .locals 15

    const/4 v14, 0x0

    const-string v0, "SdkLessAdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->zzy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/zzaat;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabo;->zzcmn:Lcom/google/android/gms/internal/zzaau;

    const-wide/16 v2, -0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzabo;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzaff;->zzw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/gms/internal/zzabo;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/zzaff;->zzx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaat;-><init>(Lcom/google/android/gms/internal/zzaau;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/internal/zzaff;->zzg(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzabo;->zzc(Lcom/google/android/gms/internal/zzaat;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeo()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v8

    new-instance v2, Lcom/google/android/gms/internal/zzafp;

    iget v7, v4, Lcom/google/android/gms/internal/zzaax;->errorCode:I

    iget-wide v10, v4, Lcom/google/android/gms/internal/zzaax;->zzcpa:J

    iget-object v13, p0, Lcom/google/android/gms/internal/zzabo;->zzcmp:Lcom/google/android/gms/internal/zzix;

    move-object v3, v0

    move-object v5, v14

    move-object v6, v14

    move-object v12, v14

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/zzafp;-><init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzix;)V

    sget-object v0, Lcom/google/android/gms/internal/zzajr;->zzajw:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzabp;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzabp;-><init>(Lcom/google/android/gms/internal/zzabo;Lcom/google/android/gms/internal/zzafp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
