.class final Lcom/google/android/gms/internal/zzbms;
.super Lcom/google/android/gms/internal/zzbmn;


# instance fields
.field private synthetic zzgnt:Lcom/google/android/gms/drive/DriveId;

.field private synthetic zzgnu:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmo;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;I)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbms;->zzgnt:Lcom/google/android/gms/drive/DriveId;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbms;->zzgnu:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmn;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    check-cast p1, Lcom/google/android/gms/internal/zzbmo;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbqi;

    new-instance v1, Lcom/google/android/gms/internal/zzbsg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbms;->zzgnt:Lcom/google/android/gms/drive/DriveId;

    iget v3, p0, Lcom/google/android/gms/internal/zzbms;->zzgnu:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbsg;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    new-instance v2, Lcom/google/android/gms/internal/zzbsm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbsm;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {v0, v1, v4, v4, v2}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzbsg;Lcom/google/android/gms/internal/zzbqm;Ljava/lang/String;Lcom/google/android/gms/internal/zzbqk;)V

    return-void
.end method
