.class public final Lcom/google/android/gms/internal/zzdpx;
.super Ljava/lang/Object;


# instance fields
.field private zzlsp:Lcom/google/android/gms/internal/zzdth;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzdth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdpx;->zzlsp:Lcom/google/android/gms/internal/zzdth;

    return-void
.end method

.method static final zza(Lcom/google/android/gms/internal/zzdth;)Lcom/google/android/gms/internal/zzdpx;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdth;->zzbpe()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "empty keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzdpx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdpx;-><init>(Lcom/google/android/gms/internal/zzdth;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdpx;->zzlsp:Lcom/google/android/gms/internal/zzdth;

    invoke-static {}, Lcom/google/android/gms/internal/zzdtj;->zzbpn()Lcom/google/android/gms/internal/zzdtj$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdth;->zzbpc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdtj$zza;->zzfy(I)Lcom/google/android/gms/internal/zzdtj$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdth;->zzbpd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdth$zzb;

    invoke-static {}, Lcom/google/android/gms/internal/zzdtj$zzb;->zzbpp()Lcom/google/android/gms/internal/zzdtj$zzb$zza;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdth$zzb;->zzbph()Lcom/google/android/gms/internal/zzdsy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdsy;->zzbon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzdtj$zzb$zza;->zzop(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdtj$zzb$zza;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdth$zzb;->zzbpi()Lcom/google/android/gms/internal/zzdtb;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzdtj$zzb$zza;->zzb(Lcom/google/android/gms/internal/zzdtb;)Lcom/google/android/gms/internal/zzdtj$zzb$zza;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdth$zzb;->zzbpk()Lcom/google/android/gms/internal/zzdtt;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzdtj$zzb$zza;->zzb(Lcom/google/android/gms/internal/zzdtt;)Lcom/google/android/gms/internal/zzdtj$zzb$zza;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdth$zzb;->zzbpj()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzdtj$zzb$zza;->zzga(I)Lcom/google/android/gms/internal/zzdtj$zzb$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdtj$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdtj$zza;->zzb(Lcom/google/android/gms/internal/zzdtj$zzb;)Lcom/google/android/gms/internal/zzdtj$zza;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdtj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffu;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzblu()Lcom/google/android/gms/internal/zzdth;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdpx;->zzlsp:Lcom/google/android/gms/internal/zzdth;

    return-object v0
.end method
