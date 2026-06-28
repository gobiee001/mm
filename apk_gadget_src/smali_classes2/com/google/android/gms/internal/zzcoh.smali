.class final Lcom/google/android/gms/internal/zzcoh;
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
.field private synthetic zzjpa:Lcom/google/android/gms/internal/zzcot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/internal/zzcot;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcoh;->zzjpa:Lcom/google/android/gms/internal/zzcot;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzdd;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcmt;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcoh;->zzjpa:Lcom/google/android/gms/internal/zzcot;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzcot;->zzb(Lcom/google/android/gms/internal/zzcmt;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
