.class final Lcom/google/android/gms/internal/zzcoy;
.super Lcom/google/android/gms/internal/zzcps;


# instance fields
.field private synthetic zzjpl:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcou;Lcom/google/android/gms/common/api/GoogleApiClient;J)V
    .locals 1

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcoy;->zzjpl:J

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcov;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcmt;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcoy;->zzjpl:J

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/zzcmt;->zza(Lcom/google/android/gms/common/api/internal/zzn;J)V

    return-void
.end method
