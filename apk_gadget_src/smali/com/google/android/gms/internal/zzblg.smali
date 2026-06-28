.class public final Lcom/google/android/gms/internal/zzblg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zzemt:Ljava/lang/String;

.field private zzgkh:Lcom/google/android/gms/drive/DriveId;

.field private zzgmq:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private zzgmr:Ljava/lang/Integer;

.field private final zzgms:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzblg;->zzgms:I

    return-void
.end method


# virtual methods
.method public final build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    const-string v2, "Client must be connected"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzblg;->zzany()V

    sget-object v1, Lcom/google/android/gms/drive/Drive;->zzebf:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbmo;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblg;->zzgmq:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaol()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/zzbqi;

    move-object v7, v0

    new-instance v1, Lcom/google/android/gms/internal/zzblh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblg;->zzgmq:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaol()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzblg;->zzgmr:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzblg;->zzemt:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzblg;->zzgkh:Lcom/google/android/gms/drive/DriveId;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzblh;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;Ljava/lang/Integer;)V

    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/zzbqi;->zza(Lcom/google/android/gms/internal/zzblh;)Landroid/content/IntentSender;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to connect Drive Play Service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getRequestId()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblg;->zzgmr:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final setActivityTitle(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblg;->zzemt:Ljava/lang/String;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/drive/DriveId;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblg;->zzgkh:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblg;->zzgmq:Lcom/google/android/gms/drive/MetadataChangeSet;

    return-void
.end method

.method public final zzanu()Lcom/google/android/gms/drive/MetadataChangeSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblg;->zzgmq:Lcom/google/android/gms/drive/MetadataChangeSet;

    return-object v0
.end method

.method public final zzanv()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblg;->zzgkh:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public final zzanw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblg;->zzemt:Ljava/lang/String;

    return-object v0
.end method

.method public final zzany()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblg;->zzgmq:Lcom/google/android/gms/drive/MetadataChangeSet;

    const-string v1, "Must provide initial metadata via setInitialMetadata."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblg;->zzgmr:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblg;->zzgmr:Ljava/lang/Integer;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzblg;->zzgmr:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final zzct(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblg;->zzgmr:Ljava/lang/Integer;

    return-void
.end method
