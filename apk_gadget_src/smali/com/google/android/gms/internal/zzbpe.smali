.class final Lcom/google/android/gms/internal/zzbpe;
.super Lcom/google/android/gms/internal/zzbky;


# instance fields
.field private synthetic zzgpc:Lcom/google/android/gms/internal/zzbnx;

.field private final zzgps:Lcom/google/android/gms/drive/events/ListenerToken;

.field private final zzgpt:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/events/ListenerToken;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpe;->zzgpc:Lcom/google/android/gms/internal/zzbnx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbky;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpe;->zzgps:Lcom/google/android/gms/drive/events/ListenerToken;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpe;->zzgpt:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzbpa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbpa",
            "<",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpe;->zzgpt:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/internal/zzbpi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbpi;-><init>(Lcom/google/android/gms/internal/zzbpe;Lcom/google/android/gms/internal/zzbpa;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbpf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbpf;-><init>(Lcom/google/android/gms/internal/zzbpe;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpe;->zza(Lcom/google/android/gms/internal/zzbpa;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/events/OpenFileCallback;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzy(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/drive/events/OpenFileCallback;->onError(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpe;->zzgpc:Lcom/google/android/gms/internal/zzbnx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpe;->zzgps:Lcom/google/android/gms/drive/events/ListenerToken;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/DriveResourceClient;->cancelOpenFileCallback(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbqv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbph;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbph;-><init>(Lcom/google/android/gms/internal/zzbpe;Lcom/google/android/gms/internal/zzbqv;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpe;->zza(Lcom/google/android/gms/internal/zzbpa;)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/zzbqv;Lcom/google/android/gms/drive/events/OpenFileCallback;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbmy;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbqv;->zzgnz:Lcom/google/android/gms/drive/zzc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbmy;-><init>(Lcom/google/android/gms/drive/zzc;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/drive/events/OpenFileCallback;->onContents(Lcom/google/android/gms/drive/DriveContents;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpe;->zzgpc:Lcom/google/android/gms/internal/zzbnx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpe;->zzgps:Lcom/google/android/gms/drive/events/ListenerToken;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/DriveResourceClient;->cancelOpenFileCallback(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbqz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbpg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbpg;-><init>(Lcom/google/android/gms/internal/zzbqz;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpe;->zza(Lcom/google/android/gms/internal/zzbpa;)V

    return-void
.end method
