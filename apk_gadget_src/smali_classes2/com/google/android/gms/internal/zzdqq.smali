.class final Lcom/google/android/gms/internal/zzdqq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdpw",
        "<",
        "Lcom/google/android/gms/internal/zzdpv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpv;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdsk;->zzab(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsk;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzdsk;

    if-nez v1, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "expected serialized EciesAeadHkdfPublicKey proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    check-cast v0, Lcom/google/android/gms/internal/zzdsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsk;->getVersion()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzdvk;->zzt(II)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsk;->zzbnj()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdsg;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsk;->zzbnj()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdsg;->zzbnl()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdsm;->zzbny()Lcom/google/android/gms/internal/zzdso;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsk;->zzbnt()Lcom/google/android/gms/internal/zzfes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsk;->zzbnu()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdup;->zza(Lcom/google/android/gms/internal/zzdur;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v2, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-direct {v0, v5, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdup;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    new-instance v5, Lcom/google/android/gms/internal/zzdqx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdsg;->zzbnm()Lcom/google/android/gms/internal/zzdsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsc;->zzbng()Lcom/google/android/gms/internal/zzdtd;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/zzdqx;-><init>(Lcom/google/android/gms/internal/zzdtd;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdul;

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

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdul;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdus;Lcom/google/android/gms/internal/zzduj;)V

    check-cast v0, Lcom/google/android/gms/internal/zzdpv;
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdqq;->zzg(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v6, 0x1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdsk;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected EciesAeadHkdfPublicKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdsk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->zzt(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->zzbnj()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdsg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->zzbnj()Lcom/google/android/gms/internal/zzdsg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdsg;->zzbnl()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdsm;->zzbny()Lcom/google/android/gms/internal/zzdso;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->zzbnt()Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsk;->zzbnu()Lcom/google/android/gms/internal/zzfes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdup;->zza(Lcom/google/android/gms/internal/zzdur;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-direct {v2, v5, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzdup;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    new-instance v5, Lcom/google/android/gms/internal/zzdqx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdsg;->zzbnm()Lcom/google/android/gms/internal/zzdsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsc;->zzbng()Lcom/google/android/gms/internal/zzdtd;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/zzdqx;-><init>(Lcom/google/android/gms/internal/zzdtd;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdul;

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

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdul;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdus;Lcom/google/android/gms/internal/zzduj;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
