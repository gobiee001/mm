.class Lcom/google/android/gms/internal/zzdqh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdpw",
        "<",
        "Lcom/google/android/gms/internal/zzdpp;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzdqh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzdqh;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    new-instance v1, Lcom/google/android/gms/internal/zzdqi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdqi;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdqe;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdpw;)V

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpp;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdrc;->zzi(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrc;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzdrc;

    if-nez v2, :cond_0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "expected AesCtrHmacAeadKey proto"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "expected serialized AesCtrHmacAeadKey proto"

    invoke-direct {v2, v3, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :try_start_1
    check-cast v1, Lcom/google/android/gms/internal/zzdrc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdrc;->getVersion()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdvk;->zzt(II)V

    new-instance v4, Lcom/google/android/gms/internal/zzdut;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdrc;->zzbmb()Lcom/google/android/gms/internal/zzdrg;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdqe;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzdvf;

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdrc;->zzbmc()Lcom/google/android/gms/internal/zzdss;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/zzdqe;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzdqa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdrc;->zzbmc()Lcom/google/android/gms/internal/zzdss;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdss;->zzbod()Lcom/google/android/gms/internal/zzdsw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdsw;->zzbok()I

    move-result v1

    invoke-direct {v4, v2, v3, v1}, Lcom/google/android/gms/internal/zzdut;-><init>(Lcom/google/android/gms/internal/zzdvf;Lcom/google/android/gms/internal/zzdqa;I)V

    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/internal/zzdpp;

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdqh;->zzd(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdrc;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected AesCtrHmacAeadKey proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdrc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrc;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->zzt(II)V

    new-instance v2, Lcom/google/android/gms/internal/zzdut;

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrc;->zzbmb()Lcom/google/android/gms/internal/zzdrg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdqe;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdvf;

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrc;->zzbmc()Lcom/google/android/gms/internal/zzdss;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzdqe;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdqa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrc;->zzbmc()Lcom/google/android/gms/internal/zzdss;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdss;->zzbod()Lcom/google/android/gms/internal/zzdsw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdsw;->zzbok()I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzdut;-><init>(Lcom/google/android/gms/internal/zzdvf;Lcom/google/android/gms/internal/zzdqa;I)V

    return-object v2
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdre;->zzj(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdre;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdqh;->zzb(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "expected serialized AesCtrHmacAeadKeyFormat proto"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdre;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected AesCtrHmacAeadKeyFormat proto"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzdre;

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdre;->zzbmf()Lcom/google/android/gms/internal/zzdri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdqe;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdrg;

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdre;->zzbmg()Lcom/google/android/gms/internal/zzdsu;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzdqe;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdss;

    invoke-static {}, Lcom/google/android/gms/internal/zzdrc;->zzbmd()Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzdrc$zza;->zzb(Lcom/google/android/gms/internal/zzdrg;)Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdrc$zza;->zzb(Lcom/google/android/gms/internal/zzdss;)Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdrc$zza;->zzfi(I)Lcom/google/android/gms/internal/zzdrc$zza;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqh;->zzb(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdrc;

    invoke-static {}, Lcom/google/android/gms/internal/zzdsy;->zzboq()Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

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
