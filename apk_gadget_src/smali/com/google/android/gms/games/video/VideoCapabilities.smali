.class public final Lcom/google/android/gms/games/video/VideoCapabilities;
.super Lcom/google/android/gms/games/internal/zzc;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/video/VideoCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzibb:Z

.field private final zzibc:Z

.field private final zzibd:Z

.field private final zzibe:[Z

.field private final zzibf:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/video/zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/video/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/video/VideoCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZ[Z[Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzc;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibb:Z

    iput-boolean p2, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibc:Z

    iput-boolean p3, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibd:Z

    iput-object p4, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibe:[Z

    iput-object p5, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibf:[Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/video/VideoCapabilities;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/games/video/VideoCapabilities;

    invoke-virtual {p1}, Lcom/google/android/gms/games/video/VideoCapabilities;->getSupportedCaptureModes()[Z

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->getSupportedCaptureModes()[Z

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/games/video/VideoCapabilities;->getSupportedQualityLevels()[Z

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->getSupportedQualityLevels()[Z

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/games/video/VideoCapabilities;->isCameraSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->isCameraSupported()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/games/video/VideoCapabilities;->isMicSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->isMicSupported()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/games/video/VideoCapabilities;->isWriteStorageSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->isWriteStorageSupported()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getSupportedCaptureModes()[Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibe:[Z

    return-object v0
.end method

.method public final getSupportedQualityLevels()[Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibf:[Z

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->getSupportedCaptureModes()[Z

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->getSupportedQualityLevels()[Z

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->isCameraSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->isMicSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->isWriteStorageSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isCameraSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibb:Z

    return v0
.end method

.method public final isFullySupported(II)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibb:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibc:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibd:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/video/VideoCapabilities;->supportsCaptureMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/video/VideoCapabilities;->supportsQualityLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMicSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibc:Z

    return v0
.end method

.method public final isWriteStorageSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibd:Z

    return v0
.end method

.method public final supportsCaptureMode(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidCaptureMode(IZ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibe:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public final supportsQualityLevel(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidQualityLevel(IZ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoCapabilities;->zzibf:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbg;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "SupportedCaptureModes"

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->getSupportedCaptureModes()[Z

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "SupportedQualityLevels"

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->getSupportedQualityLevels()[Z

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "CameraSupported"

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->isCameraSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "MicSupported"

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->isMicSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "StorageWriteSupported"

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->isWriteStorageSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzbi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->isCameraSupported()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->isMicSupported()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->isWriteStorageSupported()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->getSupportedCaptureModes()[Z

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;I[ZZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoCapabilities;->getSupportedQualityLevels()[Z

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;I[ZZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
