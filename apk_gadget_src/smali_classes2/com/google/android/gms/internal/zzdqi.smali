.class final Lcom/google/android/gms/internal/zzdqi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdpw",
        "<",
        "Lcom/google/android/gms/internal/zzdvf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzdrk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdrk;->zzbmp()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdrk;->zzbmp()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid IV size"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdtx;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdrg;->zzl(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrg;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzdrg;

    if-nez v2, :cond_0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "expected AesCtrKey proto"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "expected serialized AesCtrKey proto"

    invoke-direct {v2, v3, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :try_start_1
    check-cast v1, Lcom/google/android/gms/internal/zzdrg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdrg;->getVersion()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdvk;->zzt(II)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdrg;->zzbmj()Lcom/google/android/gms/internal/zzfes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfes;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdvk;->zzgi(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdrg;->zzbmi()Lcom/google/android/gms/internal/zzdrk;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdqi;->zza(Lcom/google/android/gms/internal/zzdrk;)V

    new-instance v2, Lcom/google/android/gms/internal/zzdtx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdrg;->zzbmj()Lcom/google/android/gms/internal/zzfes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdrg;->zzbmi()Lcom/google/android/gms/internal/zzdrk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdrk;->zzbmp()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/zzdtx;-><init>([BI)V

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/zzdtx;

    move-object v1, v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzfes;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdqi;->zze(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdtx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdrg;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected AesCtrKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdrg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrg;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->zzt(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrg;->zzbmj()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfes;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdvk;->zzgi(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrg;->zzbmi()Lcom/google/android/gms/internal/zzdrk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqi;->zza(Lcom/google/android/gms/internal/zzdrk;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdtx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrg;->zzbmj()Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrg;->zzbmi()Lcom/google/android/gms/internal/zzdrk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdrk;->zzbmp()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzdtx;-><init>([BI)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdri;->zzn(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdqi;->zzb(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "expected serialized AesCtrKeyFormat proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdri;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected AesCtrKeyFormat proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdri;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdri;->getKeySize()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdvk;->zzgi(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdri;->zzbmi()Lcom/google/android/gms/internal/zzdrk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqi;->zza(Lcom/google/android/gms/internal/zzdrk;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzdrg;->zzbmk()Lcom/google/android/gms/internal/zzdrg$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdri;->zzbmi()Lcom/google/android/gms/internal/zzdrk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdrg$zza;->zzc(Lcom/google/android/gms/internal/zzdrk;)Lcom/google/android/gms/internal/zzdrg$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdri;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdvi;->zzgh(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdrg$zza;->zzm(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrg$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdrg$zza;->zzfj(I)Lcom/google/android/gms/internal/zzdrg$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqi;->zzb(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdrg;

    invoke-static {}, Lcom/google/android/gms/internal/zzdsy;->zzboq()Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdsy$zza;->zzoj(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfek;->toByteString()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdsy$zza;->zzai(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzdsy$zzb;->zzlwf:Lcom/google/android/gms/internal/zzdsy$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdsy$zza;->zzb(Lcom/google/android/gms/internal/zzdsy$zzb;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdsy;

    return-object v0
.end method
