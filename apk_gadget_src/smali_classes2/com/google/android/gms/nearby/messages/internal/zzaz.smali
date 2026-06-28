.class final Lcom/google/android/gms/nearby/messages/internal/zzaz;
.super Lcom/google/android/gms/common/api/internal/zzcq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzcq",
        "<",
        "Lcom/google/android/gms/nearby/messages/internal/zzah;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic zzjue:Lcom/google/android/gms/nearby/messages/internal/zzak;

.field private synthetic zzjuf:Lcom/google/android/gms/nearby/messages/internal/zzbd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzbd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaz;->zzjue:Lcom/google/android/gms/nearby/messages/internal/zzak;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzaz;->zzjuf:Lcom/google/android/gms/nearby/messages/internal/zzbd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzcq;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzah;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaz;->zzjuf:Lcom/google/android/gms/nearby/messages/internal/zzbd;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaz;->zzjue:Lcom/google/android/gms/nearby/messages/internal/zzak;

    invoke-static {v1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zza(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/nearby/messages/internal/zzbd;->zza(Lcom/google/android/gms/nearby/messages/internal/zzah;Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method
