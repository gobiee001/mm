.class final Lcom/google/android/gms/internal/zzbon;
.super Lcom/google/android/gms/common/api/internal/zzdd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzdd",
        "<",
        "Lcom/google/android/gms/internal/zzbmo;",
        "Lcom/google/android/gms/drive/DriveContents;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzdd;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmo;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqi;

    new-instance v1, Lcom/google/android/gms/internal/zzble;

    const/high16 v2, 0x20000000

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzble;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/zzbsz;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzbsz;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzble;Lcom/google/android/gms/internal/zzbqk;)V

    return-void
.end method
