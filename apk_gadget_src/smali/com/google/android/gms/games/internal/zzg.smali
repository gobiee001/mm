.class public final Lcom/google/android/gms/games/internal/zzg;
.super Ljava/lang/Object;


# static fields
.field private static zzhsc:Lcom/google/android/gms/games/internal/zzp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/zzg;->zzhsc:Lcom/google/android/gms/games/internal/zzp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "PendingR::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TPendingR;>;",
            "Lcom/google/android/gms/common/internal/zzbo",
            "<TPendingR;TR;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/games/internal/zzj;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/games/internal/zzj;-><init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzbo;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/PendingResult;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/games/internal/zzo;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "PendingR::",
            "Lcom/google/android/gms/common/api/Result;",
            "ExceptionData:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TPendingR;>;",
            "Lcom/google/android/gms/common/internal/zzbo",
            "<TPendingR;TR;>;",
            "Lcom/google/android/gms/games/internal/zzo",
            "<TPendingR;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<TR;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/games/internal/zzk;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/gms/games/internal/zzk;-><init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/games/internal/zzo;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/PendingResult;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/games/internal/zzp;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "PendingR::",
            "Lcom/google/android/gms/common/api/Result;",
            "ExceptionData:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TPendingR;>;",
            "Lcom/google/android/gms/games/internal/zzp;",
            "Lcom/google/android/gms/common/internal/zzbo",
            "<TPendingR;TR;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/games/internal/zzm;

    invoke-direct {v1, p1, p0, v0, p2}, Lcom/google/android/gms/games/internal/zzm;-><init>(Lcom/google/android/gms/games/internal/zzp;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzbo;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/PendingResult;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/games/internal/zzp;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/games/internal/zzn;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "PendingR::",
            "Lcom/google/android/gms/common/api/Result;",
            "ExceptionData:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TPendingR;>;",
            "Lcom/google/android/gms/games/internal/zzp;",
            "Lcom/google/android/gms/common/internal/zzbo",
            "<TPendingR;TR;>;",
            "Lcom/google/android/gms/common/internal/zzbo",
            "<TPendingR;TExceptionData;>;",
            "Lcom/google/android/gms/games/internal/zzn",
            "<TExceptionData;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TR;>;"
        }
    .end annotation

    new-instance v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v0, Lcom/google/android/gms/games/internal/zzi;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/internal/zzi;-><init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/games/internal/zzp;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/games/internal/zzn;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/PendingResult;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    invoke-virtual {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private static zzah(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zzdh(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/games/GamesStatusCodes;->getStatusString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zzdg(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static synthetic zzai(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/zzg;->zzah(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "PendingR::",
            "Lcom/google/android/gms/common/api/Result;",
            "ExceptionData:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TPendingR;>;",
            "Lcom/google/android/gms/common/internal/zzbo",
            "<TPendingR;TR;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<TR;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/games/internal/zzg;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/games/internal/zzo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Releasable;",
            "PendingR::",
            "Lcom/google/android/gms/common/api/Result;",
            "ExceptionData:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TPendingR;>;",
            "Lcom/google/android/gms/common/internal/zzbo",
            "<TPendingR;TR;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<TR;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/games/internal/zzl;

    invoke-direct {v1, p1, p0, v0}, Lcom/google/android/gms/games/internal/zzl;-><init>(Lcom/google/android/gms/common/internal/zzbo;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/PendingResult;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
