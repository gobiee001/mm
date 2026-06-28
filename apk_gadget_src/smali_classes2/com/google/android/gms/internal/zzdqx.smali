.class final Lcom/google/android/gms/internal/zzdqx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzduj;


# instance fields
.field private final zzlti:Ljava/lang/String;

.field private final zzltj:I

.field private zzltk:Lcom/google/android/gms/internal/zzdrs;

.field private zzltl:Lcom/google/android/gms/internal/zzdrc;

.field private zzltm:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdtd;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdtd;->zzbon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzlti:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzlti:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdtd;->zzboo()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdru;->zzt(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdru;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdqe;->zzb(Lcom/google/android/gms/internal/zzdtd;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdrs;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzltk:Lcom/google/android/gms/internal/zzdrs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdru;->getKeySize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzltj:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzlti:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdtd;->zzboo()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdre;->zzj(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdre;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdqe;->zzb(Lcom/google/android/gms/internal/zzdtd;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdrc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzltl:Lcom/google/android/gms/internal/zzdrc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdre;->zzbmf()Lcom/google/android/gms/internal/zzdri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdri;->getKeySize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzltm:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdre;->zzbmg()Lcom/google/android/gms/internal/zzdsu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsu;->getKeySize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzdqx;->zzltm:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzltj:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "unsupported AEAD DEM key type: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzlti:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final zzae([B)Lcom/google/android/gms/internal/zzdpp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzlti:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdrs;->zzbmy()Lcom/google/android/gms/internal/zzdrs$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdqx;->zzltk:Lcom/google/android/gms/internal/zzdrs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdrs$zza;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdrs$zza;->zzs(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrs$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdrs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdqx;->zzlti:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzdqe;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdpp;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzlti:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzdqx;->zzltm:I

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzltm:I

    iget v2, p0, Lcom/google/android/gms/internal/zzdqx;->zzltj:I

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzdrg;->zzbmk()Lcom/google/android/gms/internal/zzdrg$zza;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdqx;->zzltl:Lcom/google/android/gms/internal/zzdrc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdrc;->zzbmb()Lcom/google/android/gms/internal/zzdrg;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdrg$zza;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdrg$zza;->zzm(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrg$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdrg;

    invoke-static {}, Lcom/google/android/gms/internal/zzdss;->zzboe()Lcom/google/android/gms/internal/zzdss$zza;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdqx;->zzltl:Lcom/google/android/gms/internal/zzdrc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdrc;->zzbmc()Lcom/google/android/gms/internal/zzdss;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdss$zza;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdss$zza;->zzaf(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdss$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzffu;

    check-cast v1, Lcom/google/android/gms/internal/zzdss;

    invoke-static {}, Lcom/google/android/gms/internal/zzdrc;->zzbmd()Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdqx;->zzltl:Lcom/google/android/gms/internal/zzdrc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdrc;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzdrc$zza;->zzfi(I)Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzdrc$zza;->zzb(Lcom/google/android/gms/internal/zzdrg;)Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdrc$zza;->zzb(Lcom/google/android/gms/internal/zzdss;)Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdrc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdqx;->zzlti:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzdqe;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdpp;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown DEM key type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzbma()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdqx;->zzltj:I

    return v0
.end method
