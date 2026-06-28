.class public final Lcom/google/android/gms/internal/zzbnx;
.super Lcom/google/android/gms/drive/DriveResourceClient;


# static fields
.field private static final zzgot:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final zzgnv:Lcom/google/android/gms/drive/DriveApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbnx;->zzgot:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/drive/Drive$zza;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/drive/Drive$zza;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbls;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbls;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzgnv:Lcom/google/android/gms/drive/DriveApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/drive/Drive$zza;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/DriveResourceClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/drive/Drive$zza;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbls;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbls;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzgnv:Lcom/google/android/gms/drive/DriveApi;

    return-void
.end method

.method static final synthetic zza(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/drive/events/ListenerToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbkt;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzci;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbkt;-><init>(Lcom/google/android/gms/common/api/internal/zzck;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method static final synthetic zza(Lcom/google/android/gms/internal/zzbkt;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/drive/events/ListenerToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method private static zzcu(I)V
    .locals 2

    const/high16 v0, 0x10000000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x30000000

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid openMode provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addChangeListener(Lcom/google/android/gms/drive/DriveResource;Lcom/google/android/gms/drive/events/OnChangeListener;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            "Lcom/google/android/gms/drive/events/OnChangeListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzbpc;

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/zzbpc;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/events/OnChangeListener;Lcom/google/android/gms/drive/DriveId;)V

    sget-object v1, Lcom/google/android/gms/internal/zzbnx;->zzgot:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/16 v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "OnChangeListener"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbog;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/zzbog;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/drive/DriveResource;Lcom/google/android/gms/internal/zzbpc;)V

    new-instance v3, Lcom/google/android/gms/internal/zzboh;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zzci;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1, v0}, Lcom/google/android/gms/internal/zzboh;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/common/api/internal/zzck;Lcom/google/android/gms/drive/DriveResource;Lcom/google/android/gms/internal/zzbpc;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdn;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzbnz;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzbnz;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final addChangeSubscription(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/drive/events/zzj;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzboi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzboi;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final cancelOpenFileCallback(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbkt;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized ListenerToken"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzbkt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbkt;->zzaoy()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzck;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final commitContents(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveContents;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/drive/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzt;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzr;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/drive/DriveResourceClient;->commitContents(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final commitContents(Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveContents;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/ExecutionOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "Execution options cannot be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzaod()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "DriveContents is already closed"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->getMode()I

    move-result v0

    const/high16 v3, 0x10000000

    if-eq v0, v3, :cond_1

    :goto_1
    const-string v0, "Cannot commit contents opened in MODE_READ_ONLY."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    const-string v1, "Only DriveContents obtained through DriveFile.open can be committed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/drive/zzr;->zzb(Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/drive/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzaog()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/drive/ExecutionOptions;->zzcr(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzaob()Lcom/google/android/gms/drive/zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/zzc;->zzant()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DriveContents must be valid for conflict detection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    sget-object p2, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgkc:Lcom/google/android/gms/drive/MetadataChangeSet;

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/zzboq;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzboq;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/zzr;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/MetadataChangeSet;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final createContents()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/DriveContents;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbon;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbon;-><init>(Lcom/google/android/gms/internal/zzbnx;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final createFile(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFolder;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/DriveContents;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/DriveFile;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbos;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/zzbos;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/DriveFolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final createFile(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFolder;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/DriveContents;",
            "Lcom/google/android/gms/drive/ExecutionOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/DriveFile;",
            ">;"
        }
    .end annotation

    const-string v0, "executionOptions cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzbot;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbot;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/ExecutionOptions;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final createFolder(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFolder;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/DriveFolder;",
            ">;"
        }
    .end annotation

    const-string v0, "MetadataChangeSet must be provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.folder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The mimetype must be of type application/vnd.google-apps.folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbou;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/zzbou;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveFolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final delete(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzboz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzboz;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final discardContents(Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveContents;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzaod()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "DriveContents is already closed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzaoc()V

    new-instance v0, Lcom/google/android/gms/internal/zzbor;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbor;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAppFolder()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/DriveFolder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzboo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzboo;-><init>(Lcom/google/android/gms/internal/zzbnx;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzbov;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbov;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getRootFolder()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/DriveFolder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbod;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbod;-><init>(Lcom/google/android/gms/internal/zzbnx;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final listChildren(Lcom/google/android/gms/drive/DriveFolder;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFolder;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/MetadataBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzgnv:Lcom/google/android/gms/drive/DriveApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveFolder;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzbni;->zza(Lcom/google/android/gms/drive/query/Query;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/query/Query;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/DriveApi;->query(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbob;->zzgnw:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbj;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final listParents(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/MetadataBuffer;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzbox;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbox;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final openFile(Lcom/google/android/gms/drive/DriveFile;I)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFile;",
            "I)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/DriveContents;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbnx;->zzcu(I)V

    new-instance v0, Lcom/google/android/gms/internal/zzbok;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbok;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/DriveFile;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final openFile(Lcom/google/android/gms/drive/DriveFile;ILcom/google/android/gms/drive/events/OpenFileCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFile;",
            "I",
            "Lcom/google/android/gms/drive/events/OpenFileCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbnx;->zzcu(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzbnx;->zzgot:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "OpenFileCallback"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zzci;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v7

    new-instance v5, Lcom/google/android/gms/internal/zzbkt;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/zzbkt;-><init>(Lcom/google/android/gms/common/api/internal/zzck;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbol;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbol;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/drive/DriveFile;ILcom/google/android/gms/internal/zzbkt;Lcom/google/android/gms/common/api/internal/zzci;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbom;

    invoke-direct {v1, p0, v7, v5}, Lcom/google/android/gms/internal/zzbom;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/common/api/internal/zzck;Lcom/google/android/gms/internal/zzbkt;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdn;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzboa;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/zzboa;-><init>(Lcom/google/android/gms/internal/zzbkt;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final query(Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/Query;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/MetadataBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzgnv:Lcom/google/android/gms/drive/DriveApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/drive/DriveApi;->query(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbny;->zzgnw:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbj;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final queryChildren(Lcom/google/android/gms/drive/DriveFolder;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveFolder;",
            "Lcom/google/android/gms/drive/query/Query;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/MetadataBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnx;->zzgnv:Lcom/google/android/gms/drive/DriveApi;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveFolder;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/zzbni;->zza(Lcom/google/android/gms/drive/query/Query;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/query/Query;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/DriveApi;->query(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzboc;->zzgnw:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbj;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final removeChangeListener(Lcom/google/android/gms/drive/events/ListenerToken;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/events/ListenerToken;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "Token is required to unregister listener."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbkt;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbkt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbkt;->zzaoy()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzck;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not recover key from ListenerToken"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeChangeSubscription(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/drive/events/zzj;->zza(ILcom/google/android/gms/drive/DriveId;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzboj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzboj;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final reopenContentsForWrite(Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveContents;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/DriveContents;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzaod()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "DriveContents is already closed"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->getMode()I

    move-result v0

    const/high16 v3, 0x10000000

    if-ne v0, v3, :cond_1

    :goto_1
    const-string v0, "This method can only be called on contents that are currently opened in MODE_READ_ONLY."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzaoc()V

    new-instance v0, Lcom/google/android/gms/internal/zzbop;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbop;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final setParents(Lcom/google/android/gms/drive/DriveResource;Ljava/util/Set;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/google/android/gms/internal/zzboy;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/zzboy;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/DriveResource;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final trash(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzboe;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzboe;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final untrash(Lcom/google/android/gms/drive/DriveResource;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzbof;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbof;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final updateMetadata(Lcom/google/android/gms/drive/DriveResource;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveResource;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/drive/Metadata;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzbow;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/zzbow;-><init>(Lcom/google/android/gms/internal/zzbnx;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveResource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
