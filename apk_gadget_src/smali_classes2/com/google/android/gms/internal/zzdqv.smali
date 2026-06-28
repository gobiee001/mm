.class final Lcom/google/android/gms/internal/zzdqv;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdqw;->zzltg:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdso;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unknown curve type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/zzdur;->zzlze:Lcom/google/android/gms/internal/zzdur;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/zzdur;->zzlzf:Lcom/google/android/gms/internal/zzdur;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/zzdur;->zzlzg:Lcom/google/android/gms/internal/zzdur;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static zza(Lcom/google/android/gms/internal/zzdsa;)Lcom/google/android/gms/internal/zzdus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdqw;->zzlth:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsa;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unknown point format: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/zzdus;->zzlzi:Lcom/google/android/gms/internal/zzdus;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/zzdus;->zzlzj:Lcom/google/android/gms/internal/zzdus;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static zza(Lcom/google/android/gms/internal/zzdsq;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdqw;->zzltf:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "hash unsupported for HMAC: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "HmacSha1"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "HmacSha256"

    goto :goto_0

    :pswitch_2
    const-string v0, "HmacSha512"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static zza(Lcom/google/android/gms/internal/zzdsg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsg;->zzbnl()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsm;->zzbny()Lcom/google/android/gms/internal/zzdso;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdup;->zza(Lcom/google/android/gms/internal/zzdur;)Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsg;->zzbnl()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsm;->zzbnz()Lcom/google/android/gms/internal/zzdsq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->zza(Lcom/google/android/gms/internal/zzdsq;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsg;->zzbnn()Lcom/google/android/gms/internal/zzdsa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzdsa;->zzluk:Lcom/google/android/gms/internal/zzdsa;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown EC point format"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsg;->zzbnm()Lcom/google/android/gms/internal/zzdsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsc;->zzbng()Lcom/google/android/gms/internal/zzdtd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqe;->zza(Lcom/google/android/gms/internal/zzdtd;)Lcom/google/android/gms/internal/zzdsy;

    return-void
.end method
