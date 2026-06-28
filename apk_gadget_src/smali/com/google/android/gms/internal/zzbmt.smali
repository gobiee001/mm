.class public final Lcom/google/android/gms/internal/zzbmt;
.super Lcom/google/android/gms/drive/DriveClient;


# instance fields
.field private final zzgnv:Lcom/google/android/gms/drive/DriveApi;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/drive/Drive$zza;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/DriveClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/drive/Drive$zza;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbls;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbls;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmt;->zzgnv:Lcom/google/android/gms/drive/DriveApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/drive/Drive$zza;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/DriveClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/drive/Drive$zza;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbls;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbls;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmt;->zzgnv:Lcom/google/android/gms/drive/DriveApi;

    return-void
.end method


# virtual methods
.method public final getDriveId(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmt;->zzgnv:Lcom/google/android/gms/drive/DriveApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/drive/DriveApi;->fetchDriveId(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbmu;->zzgnw:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbj;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getUploadPreferences()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/TransferPreferences;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmt;->zzgnv:Lcom/google/android/gms/drive/DriveApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/DriveApi;->zze(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbmv;->zzgnw:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbj;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final newCreateFileActivityIntentSender(Lcom/google/android/gms/drive/CreateFileActivityOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/CreateFileActivityOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbmx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbmx;-><init>(Lcom/google/android/gms/internal/zzbmt;Lcom/google/android/gms/drive/CreateFileActivityOptions;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final newOpenFileActivityIntentSender(Lcom/google/android/gms/drive/OpenFileActivityOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/OpenFileActivityOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbmw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbmw;-><init>(Lcom/google/android/gms/internal/zzbmt;Lcom/google/android/gms/drive/OpenFileActivityOptions;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final requestSync()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmt;->zzgnv:Lcom/google/android/gms/drive/DriveApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/DriveApi;->requestSync(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbj;->zzb(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final setUploadPreferences(Lcom/google/android/gms/drive/TransferPreferences;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/TransferPreferences;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmt;->zzgnv:Lcom/google/android/gms/drive/DriveApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/drive/DriveApi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/TransferPreferences;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbj;->zzb(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
