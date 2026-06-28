.class public final Lcom/google/android/gms/internal/zzacb;
.super Lcom/google/android/gms/internal/zzabc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static zzcrk:Lcom/google/android/gms/internal/zzacb;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzcrl:Lcom/google/android/gms/internal/zzaca;

.field private final zzcrm:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzacb;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaca;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzabc;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacb;->zzcrm:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzacb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacb;->zzcrl:Lcom/google/android/gms/internal/zzaca;

    return-void
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaca;Lcom/google/android/gms/internal/zzaat;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzaax;
    .locals 18

    const-string v2, "Starting ad request from service using: google.afma.request.getAdDictionary"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/zznu;

    sget-object v2, Lcom/google/android/gms/internal/zznh;->zzbjl:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "load_ad"

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaat;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzjn;->zzbek:Ljava/lang/String;

    invoke-direct {v8, v2, v3, v4}, Lcom/google/android/gms/internal/zznu;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/gms/internal/zzaat;->versionCode:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzaat;->zzcnt:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzaat;->zzcnt:J

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/internal/zznu;->zzd(J)Lcom/google/android/gms/internal/zzns;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cts"

    aput-object v5, v3, v4

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/internal/zznu;->zza(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/zznu;->zzjf()Lcom/google/android/gms/internal/zzns;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaca;->zzcrh:Lcom/google/android/gms/internal/zzxk;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzxk;->zzi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/zznh;->zzbpy:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-static {v3, v4, v5, v2, v0}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaca;->zzcrg:Lcom/google/android/gms/internal/zzacx;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzacx;->zzp(Landroid/content/Context;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/zznh;->zzbnd:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-static {v3, v6, v7, v2, v0}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaca;->zzcrb:Lcom/google/android/gms/internal/zzafj;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaat;->zzcne:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzafj;->zzby(Ljava/lang/String;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaca;->zzcri:Lcom/google/android/gms/internal/zzafn;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaat;->zzcnf:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/zzaat;->zzcne:Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v3, v5}, Lcom/google/android/gms/internal/zzafn;->zza(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzes()Lcom/google/android/gms/internal/zzacq;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzacq;->zzo(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v13

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/gms/internal/zzakl;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaat;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjj;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    const-string v5, "_ad"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/google/android/gms/internal/zzaat;->zzcnz:Z

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaca;->zzcre:Lcom/google/android/gms/internal/zzue;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaat;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzue;->zza(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v2

    move-object v3, v2

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/zznh;->zzbph:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-static {v3, v10, v11, v2, v0}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v14

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/android/gms/internal/zzakl;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/zznh;->zzblh:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaca;->zzcri:Lcom/google/android/gms/internal/zzafn;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzafn;->zzab(Landroid/content/Context;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/zznh;->zzbli:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-static {v3, v10, v11, v2, v0}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v2

    move-object v5, v2

    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/gms/internal/zzaat;->versionCode:I

    const/4 v10, 0x4

    if-lt v3, v10, :cond_11

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaat;->zzcnk:Landroid/os/Bundle;

    if-eqz v3, :cond_11

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaat;->zzcnk:Landroid/os/Bundle;

    move-object v10, v2

    :goto_2
    sget-object v2, Lcom/google/android/gms/internal/zznh;->zzbkb:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzahn;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "Device is offline."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/gms/internal/zzaat;->versionCode:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_4

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaat;->zzcnq:Ljava/lang/String;

    move-object v11, v2

    :goto_3
    new-instance v2, Lcom/google/android/gms/internal/zzach;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaat;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11, v3}, Lcom/google/android/gms/internal/zzach;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaat;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjj;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaat;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjj;->extras:Landroid/os/Bundle;

    const-string v3, "_ad"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzacg;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v2

    :goto_4
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_3

    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaca;->zzcrc:Lcom/google/android/gms/internal/zzmw;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaat;->zzcnr:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzmw;->zzf(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    const/4 v3, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zznh;->zzbpy:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-static {v4, v3, v0, v1, v2}, Lcom/google/android/gms/internal/zzakl;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/zzakl;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzacy;

    const/4 v4, 0x0

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/zzakl;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/zzakl;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    const/4 v6, 0x0

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/zzakl;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v9, v6}, Lcom/google/android/gms/internal/zzakl;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v13, v9}, Lcom/google/android/gms/internal/zzakl;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzaco;

    if-nez v9, :cond_6

    const-string v2, "Error fetching device info. This is not recoverable."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzaax;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    goto :goto_4

    :cond_6
    new-instance v13, Lcom/google/android/gms/internal/zzabz;

    invoke-direct {v13}, Lcom/google/android/gms/internal/zzabz;-><init>()V

    move-object/from16 v0, p2

    iput-object v0, v13, Lcom/google/android/gms/internal/zzabz;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    iput-object v9, v13, Lcom/google/android/gms/internal/zzabz;->zzcqw:Lcom/google/android/gms/internal/zzaco;

    iput-object v3, v13, Lcom/google/android/gms/internal/zzabz;->zzcqs:Lcom/google/android/gms/internal/zzacy;

    iput-object v4, v13, Lcom/google/android/gms/internal/zzabz;->zzbdn:Landroid/location/Location;

    iput-object v2, v13, Lcom/google/android/gms/internal/zzabz;->zzcqr:Landroid/os/Bundle;

    iput-object v7, v13, Lcom/google/android/gms/internal/zzabz;->zzcnf:Ljava/lang/String;

    iput-object v5, v13, Lcom/google/android/gms/internal/zzabz;->zzcqu:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v15, :cond_7

    iget-object v2, v13, Lcom/google/android/gms/internal/zzabz;->zzcnr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_7
    iput-object v15, v13, Lcom/google/android/gms/internal/zzabz;->zzcnr:Ljava/util/List;

    iput-object v10, v13, Lcom/google/android/gms/internal/zzabz;->zzcnk:Landroid/os/Bundle;

    iput-object v6, v13, Lcom/google/android/gms/internal/zzabz;->zzcqt:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaca;->zzcra:Lcom/google/android/gms/internal/zzin;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzin;->zze(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v13, Lcom/google/android/gms/internal/zzabz;->zzcqx:Lorg/json/JSONObject;

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzaca;->zzcqy:Z

    iput-boolean v2, v13, Lcom/google/android/gms/internal/zzabz;->zzcqy:Z

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/google/android/gms/internal/zzacg;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzabz;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/zzaax;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/gms/internal/zzaat;->versionCode:I

    const/4 v4, 0x7

    if-ge v2, v4, :cond_9

    :try_start_0
    const-string v2, "request_id"

    invoke-virtual {v3, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_5
    instance-of v2, v3, Lorg/json/JSONObject;

    if-nez v2, :cond_b

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    :goto_6
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "arc"

    aput-object v5, v2, v4

    invoke-virtual {v8, v12, v2}, Lcom/google/android/gms/internal/zznu;->zza(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zznu;->zzjf()Lcom/google/android/gms/internal/zzns;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaca;->zzcrj:Lcom/google/android/gms/internal/zzacf;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzacf;->zznq()Lcom/google/android/gms/internal/zztp;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zztp;->zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzacc;->zzcrn:Lcom/google/android/gms/internal/zzakg;

    move-object/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v2

    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-static {v2, v4, v5, v3, v0}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaca;->zzcrd:Lcom/google/android/gms/internal/zzacv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzacv;->zznz()Lcom/google/android/gms/internal/zzakv;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v4, "AdRequestServiceImpl.loadAd.flags"

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzakj;->zza(Lcom/google/android/gms/internal/zzakv;Ljava/lang/String;)V

    :cond_a
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzakl;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzacn;

    if-nez v7, :cond_c

    new-instance v2, Lcom/google/android/gms/internal/zzaax;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    goto/16 :goto_4

    :cond_b
    move-object v2, v3

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    goto :goto_6

    :cond_c
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzacn;->getErrorCode()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_d

    new-instance v2, Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzacn;->getErrorCode()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v8}, Lcom/google/android/gms/internal/zznu;->zzji()Lcom/google/android/gms/internal/zzns;

    const/4 v2, 0x0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzacn;->zznw()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzacn;->zznw()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzacg;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v2

    :cond_e
    if-nez v2, :cond_f

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzacn;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaat;->zzaty:Lcom/google/android/gms/internal/zzakd;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzakd;->zzcv:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzacn;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/zzacb;->zza(Lcom/google/android/gms/internal/zzaat;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzacn;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzaca;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v2

    :cond_f
    if-nez v2, :cond_10

    new-instance v2, Lcom/google/android/gms/internal/zzaax;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    :cond_10
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "tts"

    aput-object v5, v3, v4

    invoke-virtual {v8, v12, v3}, Lcom/google/android/gms/internal/zznu;->zza(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zznu;->zzjg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzaax;->zzcpj:Ljava/lang/String;

    goto/16 :goto_4

    :catch_0
    move-exception v2

    goto/16 :goto_5

    :cond_11
    move-object v10, v2

    goto/16 :goto_2

    :cond_12
    move-object v5, v3

    goto/16 :goto_1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzaat;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzacn;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzaca;)Lcom/google/android/gms/internal/zzaax;
    .locals 14

    if-eqz p6, :cond_4

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/zznu;->zzjf()Lcom/google/android/gms/internal/zzns;

    move-result-object v2

    move-object v4, v2

    :goto_0
    :try_start_0
    new-instance v9, Lcom/google/android/gms/internal/zzacl;

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzacn;->zznt()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, p0, v2}, Lcom/google/android/gms/internal/zzacl;-><init>(Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)V

    const-string v3, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    new-instance v3, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeo()Lcom/google/android/gms/common/util/zzd;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v10

    move v7, v2

    move-object v8, v3

    :goto_2
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, p1, v0, v5, v2}, Lcom/google/android/gms/internal/zzahn;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzacn;->zznv()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "x-afma-drt-cookie"

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaat;->zzcoa:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Sending webview cookie in ad request header."

    invoke-static {v5}, Lcom/google/android/gms/internal/zzagf;->zzbx(Ljava/lang/String;)V

    const-string v5, "Cookie"

    invoke-virtual {v2, v5, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzacn;->zznu()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzacn;->zznu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v5, v3

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x0

    :try_start_2
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5, v3}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {v5}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    new-instance v12, Lcom/google/android/gms/internal/zzajv;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaat;->zzcnq:Ljava/lang/String;

    invoke-direct {v12, v5}, Lcom/google/android/gms/internal/zzajv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2, v3}, Lcom/google/android/gms/internal/zzajv;->zza(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v2, v3}, Lcom/google/android/gms/internal/zzajv;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v5, 0xc8

    if-lt v3, v5, :cond_6

    const/16 v5, 0x12c

    if-ge v3, v5, :cond_6

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    const/4 v6, 0x0

    :try_start_5
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzahn;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v6

    :try_start_7
    invoke-static {v5}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/zzajv;->zzcr(Ljava/lang/String;)V

    invoke-static {v7, v13, v6, v3}, Lcom/google/android/gms/internal/zzacb;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v9, v7, v13, v6}, Lcom/google/android/gms/internal/zzacl;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz p6, :cond_3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ufe"

    aput-object v6, v3, v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/zznu;->zza(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzacn;->zznx()Z

    move-result v3

    invoke-virtual {v9, v10, v11, v3}, Lcom/google/android/gms/internal/zzacl;->zza(JZ)Lcom/google/android/gms/internal/zzaax;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v3

    :goto_3
    return-object v2

    :cond_4
    const/4 v2, 0x0

    move-object v4, v2

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Error while connecting to ad server: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzaax;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object v4, v6

    :goto_5
    :try_start_9
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception v3

    move-object v4, v6

    :goto_6
    :try_start_b
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    :cond_6
    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v13, v6, v3}, Lcom/google/android/gms/internal/zzacb;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    const/16 v5, 0x12c

    if-lt v3, v5, :cond_8

    const/16 v5, 0x190

    if-ge v3, v5, :cond_8

    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v3, "No location header to follow redirect."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/zzaax;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    move-object v2, v3

    goto :goto_3

    :cond_7
    :try_start_d
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v7, 0x1

    sget-object v3, Lcom/google/android/gms/internal/zznh;->zzbrh:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v5, v3, :cond_9

    const-string v3, "Too many redirects."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/zzaax;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    move-object v2, v3

    goto/16 :goto_3

    :cond_8
    const/16 v4, 0x2e

    :try_start_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received error HTTP response code: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/zzaax;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    move-object v2, v3

    goto/16 :goto_3

    :cond_9
    :try_start_11
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/zzacl;->zzo(Ljava/util/Map;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz p7, :cond_a

    move v7, v5

    move-object v8, v6

    goto/16 :goto_2

    :cond_a
    move v7, v5

    move-object v8, v6

    goto/16 :goto_2

    :cond_b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_3
    move-exception v3

    move-object v4, v5

    goto/16 :goto_6

    :catchall_4
    move-exception v3

    move-object v4, v5

    goto/16 :goto_5
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaca;)Lcom/google/android/gms/internal/zzacb;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzacb;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzacb;->zzcrk:Lcom/google/android/gms/internal/zzacb;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zznh;->initialize(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzacb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzacb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaca;)V

    sput-object v0, Lcom/google/android/gms/internal/zzacb;->zzcrk:Lcom/google/android/gms/internal/zzacb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzahn;->zzai(Landroid/content/Context;)Z

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/zzagd;->zzae(Landroid/content/Context;)V

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zzacb;->zzcrk:Lcom/google/android/gms/internal/zzacb;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzae(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Http Response: {\n  URL:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "    "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "      "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_2

    :cond_3
    const-string v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "  Response Code:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static final synthetic zzm(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzakv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzacn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzacn;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakl;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzabe;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzem()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacb;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzaat;->zzaty:Lcom/google/android/gms/internal/zzakd;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaft;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)V

    new-instance v0, Lcom/google/android/gms/internal/zzacd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzacd;-><init>(Lcom/google/android/gms/internal/zzacb;Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzabe;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahh;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzew()Lcom/google/android/gms/internal/zzajf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzajf;->zzqs()Landroid/os/Looper;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzew()Lcom/google/android/gms/internal/zzajf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzajf;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzace;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzace;-><init>(Lcom/google/android/gms/internal/zzacb;Ljava/util/concurrent/Future;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzabm;Lcom/google/android/gms/internal/zzabh;)V
    .locals 1

    const-string v0, "Nonagon code path entered in octagon"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzaat;)Lcom/google/android/gms/internal/zzaax;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacb;->zzcrl:Lcom/google/android/gms/internal/zzaca;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzacb;->zzcrm:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzacb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaca;Lcom/google/android/gms/internal/zzaat;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v0

    return-object v0
.end method
