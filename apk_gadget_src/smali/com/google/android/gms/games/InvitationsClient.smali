.class public Lcom/google/android/gms/games/InvitationsClient;
.super Lcom/google/android/gms/games/internal/api/zzp;


# static fields
.field private static final zzhle:Lcom/google/android/gms/common/internal/zzbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzbo",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            "Lcom/google/android/gms/games/multiplayer/InvitationBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/zzaa;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/InvitationsClient;->zzhle:Lcom/google/android/gms/common/internal/zzbo;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/api/zzp;-><init>(Landroid/app/Activity;Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/api/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/games/Games$GamesOptions;)V

    return-void
.end method


# virtual methods
.method public getInvitationInboxIntent()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/zzx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/zzx;-><init>(Lcom/google/android/gms/games/InvitationsClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadInvitations()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/multiplayer/InvitationBuffer;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/InvitationsClient;->loadInvitations(I)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public loadInvitations(I)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/multiplayer/InvitationBuffer;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/multiplayer/Invitations;->loadInvitations(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/InvitationsClient;->zzhle:Lcom/google/android/gms/common/internal/zzbo;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzg;->zzc(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzbo;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public registerInvitationCallback(Lcom/google/android/gms/games/multiplayer/InvitationCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/InvitationCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/games/multiplayer/InvitationCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/games/zzy;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gms/games/zzy;-><init>(Lcom/google/android/gms/games/InvitationsClient;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;)V

    new-instance v2, Lcom/google/android/gms/games/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzci;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/games/zzz;-><init>(Lcom/google/android/gms/games/InvitationsClient;Lcom/google/android/gms/common/api/internal/zzck;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdn;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public unregisterInvitationCallback(Lcom/google/android/gms/games/multiplayer/InvitationCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/InvitationCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/games/multiplayer/InvitationCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zzcm;->zzb(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzck;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
