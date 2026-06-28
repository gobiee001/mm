.class final Lcom/google/android/gms/internal/zzbmj;
.super Lcom/google/android/gms/internal/zzbky;


# instance fields
.field private final zzgbw:Lcom/google/android/gms/common/api/internal/zzn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$zza;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbky;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmj;->zzgbw:Lcom/google/android/gms/common/api/internal/zzn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/internal/zzblt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbmj;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzgbw:Lcom/google/android/gms/common/api/internal/zzn;

    new-instance v1, Lcom/google/android/gms/internal/zzbmk;

    invoke-direct {v1, p1, v2, v2}, Lcom/google/android/gms/internal/zzbmk;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/TransferPreferences;Lcom/google/android/gms/internal/zzblt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbqx;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbqx;->zzgqr:Lcom/google/android/gms/internal/zzbqc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/TransferPreferencesBuilder;-><init>(Lcom/google/android/gms/drive/FileUploadPreferences;)V

    invoke-virtual {v0}, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->build()Lcom/google/android/gms/drive/TransferPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmj;->zzgbw:Lcom/google/android/gms/common/api/internal/zzn;

    new-instance v2, Lcom/google/android/gms/internal/zzbmk;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzfni:Lcom/google/android/gms/common/api/Status;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzbmk;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/TransferPreferences;Lcom/google/android/gms/internal/zzblt;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbro;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->zzgbw:Lcom/google/android/gms/common/api/internal/zzn;

    new-instance v1, Lcom/google/android/gms/internal/zzbmk;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzfni:Lcom/google/android/gms/common/api/Status;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbro;->zzgrf:Lcom/google/android/gms/internal/zzbsc;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbmk;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/TransferPreferences;Lcom/google/android/gms/internal/zzblt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    return-void
.end method
