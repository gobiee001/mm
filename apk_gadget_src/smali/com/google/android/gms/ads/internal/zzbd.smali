.class final Lcom/google/android/gms/ads/internal/zzbd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzarp:Lcom/google/android/gms/ads/internal/zzba;

.field private synthetic zzarq:I

.field private synthetic zzart:Lcom/google/android/gms/internal/zzou;

.field private synthetic zzaru:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzba;Lcom/google/android/gms/internal/zzou;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzarp:Lcom/google/android/gms/ads/internal/zzba;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzart:Lcom/google/android/gms/internal/zzou;

    iput p3, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzarq:I

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzaru:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzart:Lcom/google/android/gms/internal/zzou;

    instance-of v2, v2, Lcom/google/android/gms/internal/zzol;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzarp:Lcom/google/android/gms/ads/internal/zzba;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzaul:Lcom/google/android/gms/internal/zzqt;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzarp:Lcom/google/android/gms/ads/internal/zzba;

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzarq:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzaru:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    :goto_0
    iput-boolean v0, v2, Lcom/google/android/gms/ads/internal/zzba;->zzanm:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzarp:Lcom/google/android/gms/ads/internal/zzba;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaul:Lcom/google/android/gms/internal/zzqt;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzart:Lcom/google/android/gms/internal/zzou;

    check-cast v0, Lcom/google/android/gms/internal/zzol;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzqt;->zza(Lcom/google/android/gms/internal/zzqi;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzart:Lcom/google/android/gms/internal/zzou;

    instance-of v2, v2, Lcom/google/android/gms/internal/zzoj;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzarp:Lcom/google/android/gms/ads/internal/zzba;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzauk:Lcom/google/android/gms/internal/zzqq;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzarp:Lcom/google/android/gms/ads/internal/zzba;

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzarq:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzaru:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    :goto_2
    iput-boolean v0, v2, Lcom/google/android/gms/ads/internal/zzba;->zzanm:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzarp:Lcom/google/android/gms/ads/internal/zzba;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzba;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzauk:Lcom/google/android/gms/internal/zzqq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzart:Lcom/google/android/gms/internal/zzou;

    check-cast v0, Lcom/google/android/gms/internal/zzoj;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzqq;->zza(Lcom/google/android/gms/internal/zzqe;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAppInstallAdLoaded or onContentAdLoaded method"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzarp:Lcom/google/android/gms/ads/internal/zzba;

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzarq:I

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzbd;->zzaru:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_4

    :goto_3
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/ads/internal/zza;->zzc(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3
.end method
