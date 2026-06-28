.class public Lcom/google/android/gms/internal/zzcp;
.super Ljava/lang/Object;


# static fields
.field private static final zzags:Landroid/os/ConditionVariable;

.field protected static volatile zzagt:Lcom/google/android/gms/internal/zzix;

.field private static volatile zzagv:Ljava/util/Random;


# instance fields
.field private zzagr:Lcom/google/android/gms/internal/zzdm;

.field protected volatile zzagu:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcp;->zzags:Landroid/os/ConditionVariable;

    sput-object v1, Lcom/google/android/gms/internal/zzcp;->zzagt:Lcom/google/android/gms/internal/zzix;

    sput-object v1, Lcom/google/android/gms/internal/zzcp;->zzagv:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzdm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcp;->zzagr:Lcom/google/android/gms/internal/zzdm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdm;->zzag()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcq;-><init>(Lcom/google/android/gms/internal/zzcp;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcp;)Lcom/google/android/gms/internal/zzdm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzagr:Lcom/google/android/gms/internal/zzdm;

    return-object v0
.end method

.method public static zzac()I
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzcp;->zzad()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcp;->zzad()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0
.end method

.method private static zzad()Ljava/util/Random;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzcp;->zzagv:Ljava/util/Random;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzcp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzcp;->zzagv:Ljava/util/Random;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcp;->zzagv:Ljava/util/Random;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzcp;->zzagv:Ljava/util/Random;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic zzae()Landroid/os/ConditionVariable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcp;->zzags:Landroid/os/ConditionVariable;

    return-object v0
.end method


# virtual methods
.method public final zza(IIJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzcp;->zzags:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcp;->zzagu:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzcp;->zzagt:Lcom/google/android/gms/internal/zzix;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzav;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzav;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcp;->zzagr:Lcom/google/android/gms/internal/zzdm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzdm;->zzair:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzav;->zzcn:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzav;->zzco:Ljava/lang/Long;

    sget-object v1, Lcom/google/android/gms/internal/zzcp;->zzagt:Lcom/google/android/gms/internal/zzix;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfjs;->zzc(Lcom/google/android/gms/internal/zzfjs;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzix;->zzd([B)Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zziz;->zzp(I)Lcom/google/android/gms/internal/zziz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zziz;->zzq(I)Lcom/google/android/gms/internal/zziz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziz;->zzbk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
