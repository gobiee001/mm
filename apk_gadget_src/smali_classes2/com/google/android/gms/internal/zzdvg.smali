.class public final Lcom/google/android/gms/internal/zzdvg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdqa;


# instance fields
.field private zzlzz:Ljavax/crypto/Mac;

.field private final zzmaa:I

.field private final zzmab:Ljava/lang/String;

.field private final zzmac:Ljava/security/Key;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdvg;->zzmab:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzdvg;->zzmaa:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdvg;->zzmac:Ljava/security/Key;

    sget-object v0, Lcom/google/android/gms/internal/zzduu;->zzlzq:Lcom/google/android/gms/internal/zzduu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzduu;->zzos(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdvg;->zzlzz:Ljavax/crypto/Mac;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdvg;->zzlzz:Ljavax/crypto/Mac;

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    return-void
.end method


# virtual methods
.method public final zzac([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdvg;->zzlzz:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    iget v1, p0, Lcom/google/android/gms/internal/zzdvg;->zzmaa:I

    new-array v1, v1, [B

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/zzdvg;->zzmaa:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/zzduu;->zzlzq:Lcom/google/android/gms/internal/zzduu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdvg;->zzmab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzduu;->zzos(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdvg;->zzmac:Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_0
.end method
