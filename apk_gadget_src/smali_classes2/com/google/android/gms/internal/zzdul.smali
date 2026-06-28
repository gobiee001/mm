.class public final Lcom/google/android/gms/internal/zzdul;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpv;


# static fields
.field private static final zzltb:[B


# instance fields
.field private final zzlyu:Ljava/lang/String;

.field private final zzlyv:[B

.field private final zzlyw:Lcom/google/android/gms/internal/zzdus;

.field private final zzlyx:Lcom/google/android/gms/internal/zzduj;

.field private final zzlyy:Lcom/google/android/gms/internal/zzdun;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/zzdul;->zzltb:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdus;Lcom/google/android/gms/internal/zzduj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdup;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdun;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdun;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdul;->zzlyy:Lcom/google/android/gms/internal/zzdun;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdul;->zzlyv:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdul;->zzlyu:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdul;->zzlyw:Lcom/google/android/gms/internal/zzdus;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzdul;->zzlyx:Lcom/google/android/gms/internal/zzduj;

    return-void
.end method


# virtual methods
.method public final zzd([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdul;->zzlyy:Lcom/google/android/gms/internal/zzdun;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdul;->zzlyu:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdul;->zzlyv:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdul;->zzlyx:Lcom/google/android/gms/internal/zzduj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzduj;->zzbma()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzdul;->zzlyw:Lcom/google/android/gms/internal/zzdus;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdun;->zza(Ljava/lang/String;[B[BILcom/google/android/gms/internal/zzdus;)Lcom/google/android/gms/internal/zzduo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdul;->zzlyx:Lcom/google/android/gms/internal/zzduj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzduo;->zzbql()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzduj;->zzae([B)Lcom/google/android/gms/internal/zzdpp;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzdul;->zzltb:[B

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/zzdpp;->zzd([B[B)[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzduo;->zzbqk()[B

    move-result-object v0

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
