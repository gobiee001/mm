.class final Lcom/google/android/gms/internal/zzcop;
.super Lcom/google/android/gms/common/api/internal/zzdd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzdd",
        "<",
        "Lcom/google/android/gms/internal/zzcmt;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjpd:Lcom/google/android/gms/internal/zzcnx;

.field private synthetic zzjpf:Lcom/google/android/gms/internal/zzcoq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/internal/zzcoq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcop;->zzjpd:Lcom/google/android/gms/internal/zzcnx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcop;->zzjpf:Lcom/google/android/gms/internal/zzcoq;

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

    check-cast p1, Lcom/google/android/gms/internal/zzcmt;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcop;->zzjpf:Lcom/google/android/gms/internal/zzcoq;

    new-instance v1, Lcom/google/android/gms/internal/zzcos;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcop;->zzjpd:Lcom/google/android/gms/internal/zzcnx;

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/zzcos;-><init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzcoq;->zza(Lcom/google/android/gms/internal/zzcmt;Lcom/google/android/gms/common/api/internal/zzn;)V

    return-void
.end method
