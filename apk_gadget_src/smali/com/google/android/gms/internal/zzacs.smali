.class final Lcom/google/android/gms/internal/zzacs;
.super Ljava/lang/Object;


# instance fields
.field public final zzcum:J

.field public final zzcun:Lcom/google/android/gms/internal/zzaco;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzacq;Lcom/google/android/gms/internal/zzaco;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeo()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzacs;->zzcum:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacs;->zzcun:Lcom/google/android/gms/internal/zzaco;

    return-void
.end method
