.class public final Lcom/google/android/gms/internal/zzduk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpu;


# static fields
.field private static final zzltb:[B


# instance fields
.field private final zzlys:Ljava/security/interfaces/ECPrivateKey;

.field private final zzlyt:Lcom/google/android/gms/internal/zzdum;

.field private final zzlyu:Ljava/lang/String;

.field private final zzlyv:[B

.field private final zzlyw:Lcom/google/android/gms/internal/zzdus;

.field private final zzlyx:Lcom/google/android/gms/internal/zzduj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/zzduk;->zzltb:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdus;Lcom/google/android/gms/internal/zzduj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzduk;->zzlys:Ljava/security/interfaces/ECPrivateKey;

    new-instance v0, Lcom/google/android/gms/internal/zzdum;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdum;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzduk;->zzlyt:Lcom/google/android/gms/internal/zzdum;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzduk;->zzlyv:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/zzduk;->zzlyu:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzduk;->zzlyw:Lcom/google/android/gms/internal/zzdus;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzduk;->zzlyx:Lcom/google/android/gms/internal/zzduj;

    return-void
.end method
