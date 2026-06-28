.class final Lcom/google/android/gms/internal/zztj;
.super Ljava/lang/Object;


# instance fields
.field zzbzx:Lcom/google/android/gms/ads/internal/zzak;

.field zzbzy:Lcom/google/android/gms/internal/zzjj;

.field zzbzz:Lcom/google/android/gms/internal/zzse;

.field zzcaa:J

.field zzcab:Z

.field zzcac:Z

.field private synthetic zzcad:Lcom/google/android/gms/internal/zzti;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzti;Lcom/google/android/gms/internal/zzsd;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zztj;->zzcad:Lcom/google/android/gms/internal/zzti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzti;->zza(Lcom/google/android/gms/internal/zzti;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzsd;->zzaw(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzak;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztj;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    new-instance v0, Lcom/google/android/gms/internal/zzse;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzse;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztj;->zzbzz:Lcom/google/android/gms/internal/zzse;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztj;->zzbzz:Lcom/google/android/gms/internal/zzse;

    iget-object v1, p0, Lcom/google/android/gms/internal/zztj;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    new-instance v2, Lcom/google/android/gms/internal/zzsf;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzsf;-><init>(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzkh;)V

    new-instance v2, Lcom/google/android/gms/internal/zzsn;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzsn;-><init>(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzkx;)V

    new-instance v2, Lcom/google/android/gms/internal/zzsp;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzsp;-><init>(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzoa;)V

    new-instance v2, Lcom/google/android/gms/internal/zzsr;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzsr;-><init>(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzke;)V

    new-instance v2, Lcom/google/android/gms/internal/zzst;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzst;-><init>(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzadp;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzti;Lcom/google/android/gms/internal/zzsd;Lcom/google/android/gms/internal/zzjj;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zztj;-><init>(Lcom/google/android/gms/internal/zzti;Lcom/google/android/gms/internal/zzsd;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zztj;->zzbzy:Lcom/google/android/gms/internal/zzjj;

    return-void
.end method


# virtual methods
.method final load()Z
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztj;->zzcab:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztj;->zzbzy:Lcom/google/android/gms/internal/zzjj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztj;->zzbzy:Lcom/google/android/gms/internal/zzjj;

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zztg;->zzj(Lcom/google/android/gms/internal/zzjj;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zztj;->zzbzx:Lcom/google/android/gms/ads/internal/zzak;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zztj;->zzcac:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zztj;->zzcab:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeo()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zztj;->zzcaa:J

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zztj;->zzcad:Lcom/google/android/gms/internal/zzti;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzti;->zzb(Lcom/google/android/gms/internal/zzti;)Lcom/google/android/gms/internal/zzjj;

    move-result-object v0

    goto :goto_1
.end method
