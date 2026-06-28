.class final Lcom/google/android/gms/internal/zzcpe;
.super Lcom/google/android/gms/internal/zzcps;


# instance fields
.field private synthetic zzjpi:Ljava/lang/String;

.field private synthetic zzjpp:[B

.field private synthetic zzjpr:Lcom/google/android/gms/common/api/internal/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcou;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/common/api/internal/zzci;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcpe;->zzjpi:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcpe;->zzjpp:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcpe;->zzjpr:Lcom/google/android/gms/common/api/internal/zzci;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcov;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcmt;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcpe;->zzjpi:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcpe;->zzjpp:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcpe;->zzjpr:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/zzcqm;

    new-instance v0, Lcom/google/android/gms/internal/zzcmn;

    new-instance v1, Lcom/google/android/gms/internal/zzcnu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcnu;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v5, Lcom/google/android/gms/internal/zzcnn;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzcnn;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcmn;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcmn;)V

    return-void
.end method
