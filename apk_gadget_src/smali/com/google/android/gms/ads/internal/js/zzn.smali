.class public final Lcom/google/android/gms/ads/internal/js/zzn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzapr:Lcom/google/android/gms/internal/zzakd;

.field private final zzcay:Ljava/lang/String;

.field private zzcaz:Lcom/google/android/gms/internal/zzaiq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaiq",
            "<",
            "Lcom/google/android/gms/ads/internal/js/zzc;",
            ">;"
        }
    .end annotation
.end field

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

.field private zzcbb:Lcom/google/android/gms/ads/internal/js/zzae;

.field private zzcbc:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbc:I

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcay:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzapr:Lcom/google/android/gms/internal/zzakd;

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/js/zzz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcaz:Lcom/google/android/gms/internal/zzaiq;

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/js/zzz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcba:Lcom/google/android/gms/internal/zzaiq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;Lcom/google/android/gms/internal/zzaiq;Lcom/google/android/gms/internal/zzaiq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzakd;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaiq",
            "<",
            "Lcom/google/android/gms/ads/internal/js/zzc;",
            ">;",
            "Lcom/google/android/gms/internal/zzaiq",
            "<",
            "Lcom/google/android/gms/ads/internal/js/zzc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/js/zzn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcaz:Lcom/google/android/gms/internal/zzaiq;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcba:Lcom/google/android/gms/internal/zzaiq;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/js/zzn;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbc:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/js/zzn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/js/zzn;Lcom/google/android/gms/ads/internal/js/zzae;)Lcom/google/android/gms/ads/internal/js/zzae;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbb:Lcom/google/android/gms/ads/internal/js/zzae;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/js/zzn;)Lcom/google/android/gms/internal/zzakd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzapr:Lcom/google/android/gms/internal/zzakd;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/js/zzn;)Lcom/google/android/gms/internal/zzaiq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcaz:Lcom/google/android/gms/internal/zzaiq;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/internal/js/zzn;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbc:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/internal/js/zzn;)Lcom/google/android/gms/ads/internal/js/zzae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbb:Lcom/google/android/gms/ads/internal/js/zzae;

    return-object v0
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzae;
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzae;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcba:Lcom/google/android/gms/internal/zzaiq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/js/zzae;-><init>(Lcom/google/android/gms/internal/zzaiq;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzo;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/ads/internal/js/zzo;-><init>(Lcom/google/android/gms/ads/internal/js/zzn;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/ads/internal/js/zzae;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzahn;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzw;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/js/zzw;-><init>(Lcom/google/android/gms/ads/internal/js/zzn;Lcom/google/android/gms/ads/internal/js/zzae;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/js/zzx;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/js/zzx;-><init>(Lcom/google/android/gms/ads/internal/js/zzn;Lcom/google/android/gms/ads/internal/js/zzae;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzall;->zza(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzaa;
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzn;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbb:Lcom/google/android/gms/ads/internal/js/zzae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbb:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzall;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbc:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/js/zzn;->zza(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbb:Lcom/google/android/gms/ads/internal/js/zzae;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbb:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzae;->zzlp()Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbc:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbb:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzae;->zzlp()Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbc:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbc:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/js/zzn;->zza(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzae;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbb:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzae;->zzlp()Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbc:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbb:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzae;->zzlp()Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzcbb:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzae;->zzlp()Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
