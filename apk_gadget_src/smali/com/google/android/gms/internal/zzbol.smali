.class final Lcom/google/android/gms/internal/zzbol;
.super Lcom/google/android/gms/common/api/internal/zzcq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzcq",
        "<",
        "Lcom/google/android/gms/internal/zzbmo;",
        "Lcom/google/android/gms/drive/events/OpenFileCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgoy:Lcom/google/android/gms/drive/DriveFile;

.field private synthetic zzgoz:I

.field private synthetic zzgpa:Lcom/google/android/gms/internal/zzbkt;

.field private synthetic zzgpb:Lcom/google/android/gms/common/api/internal/zzci;

.field private synthetic zzgpc:Lcom/google/android/gms/internal/zzbnx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/drive/DriveFile;ILcom/google/android/gms/internal/zzbkt;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbol;->zzgpc:Lcom/google/android/gms/internal/zzbnx;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbol;->zzgoy:Lcom/google/android/gms/drive/DriveFile;

    iput p4, p0, Lcom/google/android/gms/internal/zzbol;->zzgoz:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbol;->zzgpa:Lcom/google/android/gms/internal/zzbkt;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbol;->zzgpb:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzcq;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmo;

    new-instance v1, Lcom/google/android/gms/internal/zzbrx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbol;->zzgoy:Lcom/google/android/gms/drive/DriveFile;

    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveFile;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/zzbol;->zzgoz:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbrx;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqi;

    new-instance v2, Lcom/google/android/gms/internal/zzbpe;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbol;->zzgpc:Lcom/google/android/gms/internal/zzbnx;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbol;->zzgpa:Lcom/google/android/gms/internal/zzbkt;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbol;->zzgpb:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzbpe;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/events/ListenerToken;Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbqk;)Lcom/google/android/gms/internal/zzbpw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbol;->zzgpa:Lcom/google/android/gms/internal/zzbkt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbpw;->zzgqc:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzar;->zzal(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzaq;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbkt;->zza(Lcom/google/android/gms/common/internal/zzaq;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
