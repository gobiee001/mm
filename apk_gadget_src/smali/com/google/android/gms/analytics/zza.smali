.class public Lcom/google/android/gms/analytics/zza;
.super Lcom/google/android/gms/analytics/zzi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzi",
        "<",
        "Lcom/google/android/gms/analytics/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdoh:Lcom/google/android/gms/internal/zzaqc;

.field private zzdoi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaqc;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqc;->zzwv()Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqc;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/zzi;-><init>(Lcom/google/android/gms/analytics/zzj;Lcom/google/android/gms/common/util/zzd;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zza;->zzdoh:Lcom/google/android/gms/internal/zzaqc;

    return-void
.end method


# virtual methods
.method public final enableAdvertisingIdCollection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/zza;->zzdoi:Z

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/analytics/zzg;)V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/zzapm;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/zzg;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapm;->zzvz()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzdoh:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaqc;->zzxl()Lcom/google/android/gms/internal/zzaqu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaqu;->zzyk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapm;->setClientId(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/zza;->zzdoi:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapm;->zzwa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzdoh:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaqc;->zzxk()Lcom/google/android/gms/internal/zzapq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapq;->zzwi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzapm;->zzdq(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapq;->zzwb()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapm;->zzai(Z)V

    :cond_1
    return-void
.end method

.method public final zzde(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzb;->zzdf(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzdpt:Lcom/google/android/gms/analytics/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzg;->getTransports()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzm;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzm;->zzup()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzdpt:Lcom/google/android/gms/analytics/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzg;->getTransports()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/zzb;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zza;->zzdoh:Lcom/google/android/gms/internal/zzaqc;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/zzb;-><init>(Lcom/google/android/gms/internal/zzaqc;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzum()Lcom/google/android/gms/internal/zzaqc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzdoh:Lcom/google/android/gms/internal/zzaqc;

    return-object v0
.end method

.method public final zzun()Lcom/google/android/gms/analytics/zzg;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzi;->zzdpt:Lcom/google/android/gms/analytics/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzg;->zzus()Lcom/google/android/gms/analytics/zzg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzdoh:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaqc;->zzxd()Lcom/google/android/gms/internal/zzaqn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaqn;->zzxy()Lcom/google/android/gms/internal/zzapd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzg;->zza(Lcom/google/android/gms/analytics/zzh;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzdoh:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaqc;->zzxe()Lcom/google/android/gms/internal/zzarh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzarh;->zzzc()Lcom/google/android/gms/internal/zzapi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzg;->zza(Lcom/google/android/gms/analytics/zzh;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zzi;->zzd(Lcom/google/android/gms/analytics/zzg;)V

    return-object v0
.end method
