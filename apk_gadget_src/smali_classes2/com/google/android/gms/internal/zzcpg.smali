.class final Lcom/google/android/gms/internal/zzcpg;
.super Lcom/google/android/gms/internal/zzcps;


# instance fields
.field private synthetic zzjpi:Ljava/lang/String;

.field private synthetic zzjps:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcou;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcpg;->zzjpi:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcpg;->zzjps:[B

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcps;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcov;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    check-cast p1, Lcom/google/android/gms/internal/zzcmt;

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcpg;->zzjpi:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcpg;->zzjps:[B

    invoke-static {v1}, Lcom/google/android/gms/nearby/connection/Payload;->fromBytes([B)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1, v3}, Lcom/google/android/gms/internal/zzcmt;->zza(Lcom/google/android/gms/common/api/internal/zzn;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V

    return-void
.end method
