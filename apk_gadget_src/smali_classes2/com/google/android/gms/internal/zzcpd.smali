.class final Lcom/google/android/gms/internal/zzcpd;
.super Lcom/google/android/gms/internal/zzcps;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzjpi:Ljava/lang/String;

.field private synthetic zzjpp:[B

.field private synthetic zzjpq:Lcom/google/android/gms/common/api/internal/zzci;

.field private synthetic zzjpr:Lcom/google/android/gms/common/api/internal/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcou;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcpd;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcpd;->zzjpi:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcpd;->zzjpp:[B

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcpd;->zzjpq:Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcpd;->zzjpr:Lcom/google/android/gms/common/api/internal/zzci;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcov;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcmt;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcpd;->val$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcpd;->zzjpi:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcpd;->zzjpp:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcpd;->zzjpq:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcpd;->zzjpr:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/zzcqm;

    new-instance v0, Lcom/google/android/gms/internal/zzcsg;

    new-instance v1, Lcom/google/android/gms/internal/zzcnu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcnu;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v7, Lcom/google/android/gms/internal/zzcnn;

    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/zzcnn;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/internal/zzcne;

    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/zzcne;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcsg;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcsg;)V

    return-void
.end method
