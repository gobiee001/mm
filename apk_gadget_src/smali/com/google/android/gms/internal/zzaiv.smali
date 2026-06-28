.class public final Lcom/google/android/gms/internal/zzaiv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static zzdcj:Lcom/google/android/gms/internal/zzv;

.field private static final zzdck:Ljava/lang/Object;

.field private static zzdcl:Lcom/google/android/gms/internal/zzajb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzajb",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaiv;->zzdck:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzaiw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaiw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaiv;->zzdcl:Lcom/google/android/gms/internal/zzajb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaiv;->zzbb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzv;

    return-void
.end method

.method private static zzbb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzv;
    .locals 5

    sget-object v1, Lcom/google/android/gms/internal/zzaiv;->zzdck:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzaiv;->zzdcj:Lcom/google/android/gms/internal/zzv;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zznh;->initialize(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbqo:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaip;->zzba(Landroid/content/Context;)Lcom/google/android/gms/internal/zzv;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/zzaiv;->zzdcj:Lcom/google/android/gms/internal/zzv;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzaiv;->zzdcj:Lcom/google/android/gms/internal/zzv;

    monitor-exit v1

    return-object v0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/zzai;

    new-instance v0, Lcom/google/android/gms/internal/zzar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzar;-><init>()V

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzai;-><init>(Lcom/google/android/gms/internal/zzah;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "volley"

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzv;

    new-instance v2, Lcom/google/android/gms/internal/zzal;

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/zzal;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzv;-><init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzm;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzv;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/zzakv;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/internal/zzakv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v4, Lcom/google/android/gms/internal/zzajc;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzajc;-><init>(Lcom/google/android/gms/internal/zzaiw;)V

    new-instance v5, Lcom/google/android/gms/internal/zzaiz;

    invoke-direct {v5, p0, p2, v4}, Lcom/google/android/gms/internal/zzaiz;-><init>(Lcom/google/android/gms/internal/zzaiv;Ljava/lang/String;Lcom/google/android/gms/internal/zzajc;)V

    new-instance v8, Lcom/google/android/gms/internal/zzajv;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/zzajv;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaja;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzaja;-><init>(Lcom/google/android/gms/internal/zzaiv;ILjava/lang/String;Lcom/google/android/gms/internal/zzy;Lcom/google/android/gms/internal/zzx;[BLjava/util/Map;Lcom/google/android/gms/internal/zzajv;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzajv;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "GET"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzr;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzr;->zzf()[B

    move-result-object v3

    invoke-virtual {v8, p2, v1, v2, v3}, Lcom/google/android/gms/internal/zzajv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zza; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/zzaiv;->zzdcj:Lcom/google/android/gms/internal/zzv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzv;->zze(Lcom/google/android/gms/internal/zzr;)Lcom/google/android/gms/internal/zzr;

    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzajb;)Lcom/google/android/gms/internal/zzakv;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzajb",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzakv",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzaiv;->zzdcj:Lcom/google/android/gms/internal/zzv;

    new-instance v2, Lcom/google/android/gms/internal/zzajd;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/zzajd;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzalf;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzv;->zze(Lcom/google/android/gms/internal/zzr;)Lcom/google/android/gms/internal/zzr;

    new-instance v1, Lcom/google/android/gms/internal/zzaiy;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzaiy;-><init>(Lcom/google/android/gms/internal/zzaiv;Lcom/google/android/gms/internal/zzajb;)V

    sget-object v2, Lcom/google/android/gms/internal/zzala;->zzdff:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakh;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/gms/internal/zzaix;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/zzaix;-><init>(Lcom/google/android/gms/internal/zzaiv;Lcom/google/android/gms/internal/zzajb;)V

    sget-object v3, Lcom/google/android/gms/internal/zzala;->zzdff:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzakv;Ljava/lang/Class;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzakv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzaiv;->zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/zzakv;

    move-result-object v0

    return-object v0
.end method
