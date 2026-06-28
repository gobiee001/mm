.class final Lcom/google/android/gms/internal/zzdqp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdpw",
        "<",
        "Lcom/google/android/gms/internal/zzdpu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpu;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdsi;->zzx(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsi;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzdsi;

    if-nez v1, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "expected serialized EciesAeadHkdfPrivateKey proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    check-cast v0, Lcom/google/android/gms/internal/zzdsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsi;->getVersion()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzdvk;->zzt(II)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsi;->zzbnq()Lcom/google/android/gms/internal/zzdsk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdsk;->zzbnj()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdsg;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsi;->zzbnq()Lcom/google/android/gms/internal/zzdsk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdsk;->zzbnj()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdsg;->zzbnl()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdsm;->zzbny()Lcom/google/android/gms/internal/zzdso;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsi;->zzbmj()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdup;->zza(Lcom/google/android/gms/internal/zzdur;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v0, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v0, v2, v1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    const-string v1, "EC"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    new-instance v5, Lcom/google/android/gms/internal/zzdqx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdsg;->zzbnm()Lcom/google/android/gms/internal/zzdsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsc;->zzbng()Lcom/google/android/gms/internal/zzdtd;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/zzdqx;-><init>(Lcom/google/android/gms/internal/zzdtd;)V

    new-instance v0, Lcom/google/android/gms/internal/zzduk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdsm;->zzboa()Lcom/google/android/gms/internal/zzfes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdsm;->zzbnz()Lcom/google/android/gms/internal/zzdsq;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdsq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdsg;->zzbnn()Lcom/google/android/gms/internal/zzdsa;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdsa;)Lcom/google/android/gms/internal/zzdus;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzduk;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdus;Lcom/google/android/gms/internal/zzduj;)V

    check-cast v0, Lcom/google/android/gms/internal/zzdpu;
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzfes;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdqp;->zzf(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdsi;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfPrivateKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdsi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsi;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->zzt(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsi;->zzbnq()Lcom/google/android/gms/internal/zzdsk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsk;->zzbnj()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdsg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsi;->zzbnq()Lcom/google/android/gms/internal/zzdsk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsk;->zzbnj()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdsg;->zzbnl()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdsm;->zzbny()Lcom/google/android/gms/internal/zzdso;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsi;->zzbmj()Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdup;->zza(Lcom/google/android/gms/internal/zzdur;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    new-instance v2, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    new-instance v5, Lcom/google/android/gms/internal/zzdqx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdsg;->zzbnm()Lcom/google/android/gms/internal/zzdsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsc;->zzbng()Lcom/google/android/gms/internal/zzdtd;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/zzdqx;-><init>(Lcom/google/android/gms/internal/zzdtd;)V

    new-instance v0, Lcom/google/android/gms/internal/zzduk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdsm;->zzboa()Lcom/google/android/gms/internal/zzfes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdsm;->zzbnz()Lcom/google/android/gms/internal/zzdsq;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdsq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdsg;->zzbnn()Lcom/google/android/gms/internal/zzdsa;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdsa;)Lcom/google/android/gms/internal/zzdus;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzduk;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdus;Lcom/google/android/gms/internal/zzduj;)V

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
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdse;->zzw(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdqp;->zzb(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid EciesAeadHkdf key format"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdse;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfKeyFormat proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdse;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdse;->zzbnj()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdsg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdse;->zzbnj()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsg;->zzbnl()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsm;->zzbny()Lcom/google/android/gms/internal/zzdso;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdup;->zza(Lcom/google/android/gms/internal/zzdur;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    const-string v1, "EC"

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzdsk;->zzbnv()Lcom/google/android/gms/internal/zzdsk$zza;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzdsk$zza;->zzfp(I)Lcom/google/android/gms/internal/zzdsk$zza;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdse;->zzbnj()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzdsk$zza;->zzc(Lcom/google/android/gms/internal/zzdsg;)Lcom/google/android/gms/internal/zzdsk$zza;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzdsk$zza;->zzac(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsk$zza;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzdsk$zza;->zzad(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsk$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdsk;

    invoke-static {}, Lcom/google/android/gms/internal/zzdsi;->zzbnr()Lcom/google/android/gms/internal/zzdsi$zza;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzdsi$zza;->zzfo(I)Lcom/google/android/gms/internal/zzdsi$zza;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzdsi$zza;->zzb(Lcom/google/android/gms/internal/zzdsk;)Lcom/google/android/gms/internal/zzdsi$zza;

    move-result-object v0

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdsi$zza;->zzy(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsi$zza;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqp;->zzb(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdsi;

    invoke-static {}, Lcom/google/android/gms/internal/zzdsy;->zzboq()Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdsy$zza;->zzoj(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfek;->toByteString()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdsy$zza;->zzai(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzdsy$zzb;->zzlwg:Lcom/google/android/gms/internal/zzdsy$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdsy$zza;->zzb(Lcom/google/android/gms/internal/zzdsy$zzb;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdsy;

    return-object v0
.end method
