.class final Lcom/google/android/gms/internal/zzbok;
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


# instance fields
.field private synthetic zzgoy:Lcom/google/android/gms/drive/DriveFile;

.field private synthetic zzgoz:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/DriveFile;I)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbok;->zzgoy:Lcom/google/android/gms/drive/DriveFile;

    iput p3, p0, Lcom/google/android/gms/internal/zzbok;->zzgoz:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzdd;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmo;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqi;

    new-instance v1, Lcom/google/android/gms/internal/zzbrx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbok;->zzgoy:Lcom/google/android/gms/drive/DriveFile;

    invoke-interface {v2}, Lcom/google/android/gms/drive/DriveFile;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzbok;->zzgoz:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbrx;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v2, Lcom/google/android/gms/internal/zzbtc;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzbtc;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzbrx;Lcom/google/android/gms/internal/zzbqk;)Lcom/google/android/gms/internal/zzbpw;

    return-void
.end method
