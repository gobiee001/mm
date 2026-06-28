.class final Lcom/google/android/gms/internal/zzbmw;
.super Lcom/google/android/gms/common/api/internal/zzdd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzdd",
        "<",
        "Lcom/google/android/gms/internal/zzbmo;",
        "Landroid/content/IntentSender;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgnx:Lcom/google/android/gms/drive/OpenFileActivityOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmt;Lcom/google/android/gms/drive/OpenFileActivityOptions;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmw;->zzgnx:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzdd;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmo;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqi;

    new-instance v1, Lcom/google/android/gms/internal/zzbsa;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbmw;->zzgnx:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    iget-object v2, v2, Lcom/google/android/gms/drive/OpenFileActivityOptions;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbmw;->zzgnx:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    iget-object v3, v3, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzgki:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbmw;->zzgnx:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    iget-object v4, v4, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzgkk:Lcom/google/android/gms/drive/DriveId;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbmw;->zzgnx:Lcom/google/android/gms/drive/OpenFileActivityOptions;

    iget-object v5, v5, Lcom/google/android/gms/drive/OpenFileActivityOptions;->zzgkj:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzbsa;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/query/internal/FilterHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzbsa;)Landroid/content/IntentSender;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
