.class public final Lcom/google/android/gms/internal/zzdqt;
.super Ljava/lang/Object;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzdqt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzdqt;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzdpx;)Lcom/google/android/gms/internal/zzdpv;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzdqe;->zza(Lcom/google/android/gms/internal/zzdpx;Lcom/google/android/gms/internal/zzdpw;)Lcom/google/android/gms/internal/zzdqc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzdqu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzdqu;-><init>(Lcom/google/android/gms/internal/zzdqc;)V

    return-object v1
.end method
