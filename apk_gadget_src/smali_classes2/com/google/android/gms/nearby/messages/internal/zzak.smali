.class public final Lcom/google/android/gms/nearby/messages/internal/zzak;
.super Lcom/google/android/gms/nearby/messages/MessagesClient;


# static fields
.field private static final MESSAGES_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessagesOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzebf:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzah;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzebg:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzah;",
            "Lcom/google/android/gms/nearby/messages/MessagesOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzjtk:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzebf:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzau;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzebg:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.MESSAGES_API"

    sget-object v2, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzebg:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzebf:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzak;->MESSAGES_API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/nearby/messages/MessagesOptions;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/nearby/messages/internal/zzak;->MESSAGES_API:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfmj:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/nearby/messages/MessagesClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/nearby/messages/MessagesOptions;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzjtk:I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzbc;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/google/android/gms/nearby/messages/internal/zzbc;-><init>(Landroid/app/Activity;Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/nearby/messages/internal/zzau;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/nearby/messages/MessagesOptions;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/nearby/messages/internal/zzak;->MESSAGES_API:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfmj:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/nearby/messages/MessagesClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/nearby/messages/MessagesOptions;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzdy(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzjtk:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/common/api/internal/zzci;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzd(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzbd;Lcom/google/android/gms/nearby/messages/internal/zzbd;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<TT;>;",
            "Lcom/google/android/gms/nearby/messages/internal/zzbd;",
            "Lcom/google/android/gms/nearby/messages/internal/zzbd;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzaz;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzaz;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzbd;)V

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzba;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzci;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v2

    invoke-direct {v1, p0, v2, p3}, Lcom/google/android/gms/nearby/messages/internal/zzba;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/internal/zzck;Lcom/google/android/gms/nearby/messages/internal/zzbd;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdn;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/nearby/messages/internal/zzbd;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/messages/internal/zzbd;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzbb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzbb;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/nearby/messages/internal/zzbd;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method static final synthetic zza(ILcom/google/android/gms/nearby/messages/internal/zzah;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzef(I)V

    return-void
.end method

.method static final synthetic zza(Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/internal/zzah;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/common/api/internal/zzci;Landroid/app/PendingIntent;)V

    return-void
.end method

.method static final synthetic zza(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzah;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzc(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method

.method static final synthetic zza(Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/internal/zzah;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zza(Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/nearby/messages/internal/zzaf;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzaf;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/nearby/messages/internal/zzak;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzef(I)V

    return-void
.end method

.method private final zzah(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/api/internal/zzcm;->zzb(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Lcom/google/android/gms/common/api/internal/zzck;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/nearby/messages/internal/zzay;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzay;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private final zzai(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/zzci;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v0

    goto :goto_0
.end method

.method static final synthetic zzb(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzah;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzb(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method

.method static final synthetic zzc(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzah;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/common/api/internal/zzci;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TT;>;)",
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzax;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzax;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const-class v1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v0

    return-object v0
.end method

.method private final zzef(I)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzat;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zza(Lcom/google/android/gms/nearby/messages/internal/zzbd;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final handleIntent(Landroid/content/Intent;Lcom/google/android/gms/nearby/messages/MessageListener;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzcta;->zza(Landroid/content/Intent;Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void
.end method

.method public final publish(Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/messages/Message;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/nearby/messages/PublishOptions;->DEFAULT:Lcom/google/android/gms/nearby/messages/PublishOptions;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/nearby/messages/MessagesClient;->publish(Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/PublishOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final publish(Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/PublishOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/messages/Message;",
            "Lcom/google/android/gms/nearby/messages/PublishOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/nearby/messages/PublishOptions;->getCallback()Lcom/google/android/gms/nearby/messages/PublishCallback;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/nearby/messages/internal/zzav;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzav;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;)V

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzal;

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/google/android/gms/nearby/messages/internal/zzal;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/internal/zzbe;Lcom/google/android/gms/nearby/messages/PublishOptions;)V

    new-instance v2, Lcom/google/android/gms/nearby/messages/internal/zzam;

    invoke-direct {v2, p1}, Lcom/google/android/gms/nearby/messages/internal/zzam;-><init>(Lcom/google/android/gms/nearby/messages/Message;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zza(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzbd;Lcom/google/android/gms/nearby/messages/internal/zzbd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final registerStatusCallback(Lcom/google/android/gms/nearby/messages/StatusCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzar;

    invoke-direct {v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzar;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    new-instance v2, Lcom/google/android/gms/nearby/messages/internal/zzas;

    invoke-direct {v2, v0}, Lcom/google/android/gms/nearby/messages/internal/zzas;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zza(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzbd;Lcom/google/android/gms/nearby/messages/internal/zzbd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->DEFAULT:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/nearby/messages/MessagesClient;->subscribe(Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/nearby/messages/SubscribeOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getCallback()Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzap;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzap;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/internal/zzbg;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zza(Lcom/google/android/gms/nearby/messages/internal/zzbd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzbg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzbg;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    goto :goto_0
.end method

.method public final subscribe(Lcom/google/android/gms/nearby/messages/MessageListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->DEFAULT:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/nearby/messages/MessagesClient;->subscribe(Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            "Lcom/google/android/gms/nearby/messages/SubscribeOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/Strategy;->zzbcc()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Strategy.setBackgroundScanMode() is only supported by background subscribe (the version which takes a PendingIntent)."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getCallback()Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/nearby/messages/internal/zzaw;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzaw;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;)V

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzan;

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/google/android/gms/nearby/messages/internal/zzan;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzbg;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V

    new-instance v2, Lcom/google/android/gms/nearby/messages/internal/zzao;

    invoke-direct {v2, v0}, Lcom/google/android/gms/nearby/messages/internal/zzao;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zza(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzbd;Lcom/google/android/gms/nearby/messages/internal/zzbd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unpublish(Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/messages/Message;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final unregisterStatusCallback(Lcom/google/android/gms/nearby/messages/StatusCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final unsubscribe(Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzaq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzaq;-><init>(Landroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zza(Lcom/google/android/gms/nearby/messages/internal/zzbd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final unsubscribe(Lcom/google/android/gms/nearby/messages/MessageListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zza(Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/internal/zzbg;Lcom/google/android/gms/nearby/messages/SubscribeOptions;Lcom/google/android/gms/nearby/messages/internal/zzah;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v5, p0, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzjtk:I

    move-object v0, p4

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/common/api/internal/zzci;Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/internal/zzab;Lcom/google/android/gms/nearby/messages/SubscribeOptions;I)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzbg;Lcom/google/android/gms/nearby/messages/SubscribeOptions;Lcom/google/android/gms/nearby/messages/internal/zzah;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzjtk:I

    move-object v0, p4

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzab;Lcom/google/android/gms/nearby/messages/SubscribeOptions;[BI)V

    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/internal/zzbe;Lcom/google/android/gms/nearby/messages/PublishOptions;Lcom/google/android/gms/nearby/messages/internal/zzah;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zza(Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/nearby/messages/internal/zzaf;

    move-result-object v2

    iget v5, p0, Lcom/google/android/gms/nearby/messages/internal/zzak;->zzjtk:I

    move-object v0, p4

    move-object v1, p5

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zza(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/messages/internal/zzaf;Lcom/google/android/gms/nearby/messages/internal/zzv;Lcom/google/android/gms/nearby/messages/PublishOptions;I)V

    return-void
.end method
