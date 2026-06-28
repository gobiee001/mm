.class abstract Lcom/google/android/gms/internal/zzbpb;
.super Lcom/google/android/gms/common/api/internal/zzdd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/zzdd",
        "<",
        "Lcom/google/android/gms/internal/zzbmo;",
        "TT;>;"
    }
.end annotation


# instance fields
.field zzgmp:I

.field private final zzgpi:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private final zzgpj:Lcom/google/android/gms/drive/DriveContents;

.field zzgpk:Lcom/google/android/gms/drive/zzo;

.field private zzgpl:Lcom/google/android/gms/drive/metadata/internal/zzk;

.field zzgpm:Lcom/google/android/gms/drive/MetadataChangeSet;

.field zzgpn:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzdd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpi:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpj:Lcom/google/android/gms/drive/DriveContents;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpi:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbni;->zzb(Lcom/google/android/gms/drive/MetadataChangeSet;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpb;->zzape()Lcom/google/android/gms/drive/zzo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpk:Lcom/google/android/gms/drive/zzo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpi:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzgy(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpl:Lcom/google/android/gms/drive/metadata/internal/zzk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpl:Lcom/google/android/gms/drive/metadata/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpl:Lcom/google/android/gms/drive/metadata/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "May not create folders using this method. Use DriveFolderManagerClient#createFolder() instead of mime type application/vnd.google-apps.folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpj:Lcom/google/android/gms/drive/DriveContents;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpj:Lcom/google/android/gms/drive/DriveContents;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbmy;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only DriveContents obtained from the Drive API are accepted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpj:Lcom/google/android/gms/drive/DriveContents;

    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpj:Lcom/google/android/gms/drive/DriveContents;

    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->zzaod()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DriveContents are already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpk:Lcom/google/android/gms/drive/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/ExecutionOptions;->zza(Lcom/google/android/gms/internal/zzbmo;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpk:Lcom/google/android/gms/drive/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzo;->zzaoj()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpi:Lcom/google/android/gms/drive/MetadataChangeSet;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpm:Lcom/google/android/gms/drive/MetadataChangeSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpm:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzaol()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpj:Lcom/google/android/gms/drive/DriveContents;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpl:Lcom/google/android/gms/drive/metadata/internal/zzk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbni;->zza(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/metadata/internal/zzk;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpn:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpl:Lcom/google/android/gms/drive/metadata/internal/zzk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpl:Lcom/google/android/gms/drive/metadata/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzaps()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/zzbpb;->zzgmp:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbpb;->zza(Lcom/google/android/gms/internal/zzbmo;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpb;->zzgpi:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbni;->zza(Lcom/google/android/gms/drive/MetadataChangeSet;Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzbmo;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbmo;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method zzape()Lcom/google/android/gms/drive/zzo;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzq;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzo;

    return-object v0
.end method
