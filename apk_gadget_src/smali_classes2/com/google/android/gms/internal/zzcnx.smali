.class public final Lcom/google/android/gms/internal/zzcnx;
.super Lcom/google/android/gms/nearby/connection/ConnectionsClient;


# static fields
.field private static final CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzebf:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzcmt;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzebg:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzcmt;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzjot:Lcom/google/android/gms/internal/zzcsc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcnx;->zzebf:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzcog;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcog;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcnx;->zzebg:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Nearby.CONNECTIONS_API"

    sget-object v2, Lcom/google/android/gms/internal/zzcnx;->zzebg:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzcnx;->zzebf:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/internal/zzcnx;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzcnx;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfmj:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionsClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcsc;->zzbbx()Lcom/google/android/gms/internal/zzcsc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzcnx;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfmj:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionsClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcsc;->zzbbx()Lcom/google/android/gms/internal/zzcsc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcoq;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcoq;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcop;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcop;-><init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/internal/zzcoq;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcot;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcot;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcoh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcoh;-><init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/internal/zzcot;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzdd;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method static final synthetic zza(JLcom/google/android/gms/internal/zzcmt;Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p2, p3, p0, p1}, Lcom/google/android/gms/internal/zzcmt;->zza(Lcom/google/android/gms/common/api/internal/zzn;J)V

    return-void
.end method

.method static final synthetic zza(Lcom/google/android/gms/internal/zzcmt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcmt;->stopAllEndpoints()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcnx;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcnx;->zzkp(Ljava/lang/String;)V

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/internal/zzcmt;Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p2, p3, p0, p1}, Lcom/google/android/gms/internal/zzcmt;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcmt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzcmt;->disconnectFromEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcmt;Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/zzcmt;->zzj(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;)V

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Lcom/google/android/gms/internal/zzcmt;Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v1

    invoke-virtual {p2, p3, v0, p1, v1}, Lcom/google/android/gms/internal/zzcmt;->zza(Lcom/google/android/gms/common/api/internal/zzn;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/internal/zzcmt;Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p3, p4, p0, p1, p2}, Lcom/google/android/gms/internal/zzcmt;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method

.method static final synthetic zza(Ljava/util/List;Lcom/google/android/gms/nearby/connection/Payload;Lcom/google/android/gms/internal/zzcmt;Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p1, v1}, Lcom/google/android/gms/internal/zzcmt;->zza(Lcom/google/android/gms/common/api/internal/zzn;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcnx;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcnx;->zzko(Ljava/lang/String;)V

    return-void
.end method

.method private final zzko(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    const-string v1, "connection"

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzcsc;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    new-instance v2, Lcom/google/android/gms/internal/zzcon;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzcon;-><init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/common/api/internal/zzci;)V

    new-instance v3, Lcom/google/android/gms/internal/zzcoo;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzci;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzcoo;-><init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/common/api/internal/zzck;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/gms/internal/zzcsc;->zzb(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdn;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private final zzkp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    const-string v2, "connection"

    invoke-virtual {v1, p0, p1, v2}, Lcom/google/android/gms/internal/zzcsc;->zzb(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/zzcsc;->zzb(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/zzck;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final acceptConnection(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/PayloadCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/nearby/connection/PayloadCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcnz;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/zzcnz;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzcnx;->zza(Lcom/google/android/gms/internal/zzcoq;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final cancelPayload(J)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcod;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzcod;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnx;->zza(Lcom/google/android/gms/internal/zzcoq;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final disconnectFromEndpoint(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcoe;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcoe;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnx;->zza(Lcom/google/android/gms/internal/zzcot;)Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcnx;->zzkp(Ljava/lang/String;)V

    return-void
.end method

.method public final rejectConnection(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcoa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcoa;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnx;->zza(Lcom/google/android/gms/internal/zzcoq;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final requestConnection(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcor;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/zzcor;-><init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;)V

    const-class v1, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcnx;->zzko(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzcny;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/internal/zzcny;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzcnx;->zza(Lcom/google/android/gms/internal/zzcoq;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcom;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzcom;-><init>(Lcom/google/android/gms/internal/zzcnx;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final sendPayload(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/Payload;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcob;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzcob;-><init>(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnx;->zza(Lcom/google/android/gms/internal/zzcoq;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final sendPayload(Ljava/util/List;Lcom/google/android/gms/nearby/connection/Payload;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/nearby/connection/Payload;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcoc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzcoc;-><init>(Ljava/util/List;Lcom/google/android/gms/nearby/connection/Payload;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnx;->zza(Lcom/google/android/gms/internal/zzcoq;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final startAdvertising(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
            "Lcom/google/android/gms/nearby/connection/AdvertisingOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcor;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/zzcor;-><init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;)V

    const-class v1, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "advertising"

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzcsc;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    new-instance v0, Lcom/google/android/gms/internal/zzcoi;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcoi;-><init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/common/api/internal/zzci;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V

    new-instance v1, Lcom/google/android/gms/internal/zzcoj;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zzci;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzcoj;-><init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/common/api/internal/zzck;)V

    invoke-virtual {v7, p0, v0, v1}, Lcom/google/android/gms/internal/zzcsc;->zzb(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdn;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final startDiscovery(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
            "Lcom/google/android/gms/nearby/connection/DiscoveryOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    const-string v1, "discovery"

    invoke-virtual {v0, p0, p2, v1}, Lcom/google/android/gms/internal/zzcsc;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    new-instance v0, Lcom/google/android/gms/internal/zzcok;

    move-object v1, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcok;-><init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/common/api/internal/zzci;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V

    new-instance v1, Lcom/google/android/gms/internal/zzcol;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zzci;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzcol;-><init>(Lcom/google/android/gms/internal/zzcnx;Lcom/google/android/gms/common/api/internal/zzck;)V

    invoke-virtual {v6, p0, v0, v1}, Lcom/google/android/gms/internal/zzcsc;->zzb(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdn;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final stopAdvertising()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    const-string v1, "advertising"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/zzcsc;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/String;)V

    return-void
.end method

.method public final stopAllEndpoints()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/ConnectionsClient;->stopAdvertising()V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/ConnectionsClient;->stopDiscovery()V

    sget-object v0, Lcom/google/android/gms/internal/zzcof;->zzjoz:Lcom/google/android/gms/internal/zzcot;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnx;->zza(Lcom/google/android/gms/internal/zzcot;)Lcom/google/android/gms/tasks/Task;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    const-string v1, "connection"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/zzcsc;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/String;)V

    return-void
.end method

.method public final stopDiscovery()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnx;->zzjot:Lcom/google/android/gms/internal/zzcsc;

    const-string v1, "discovery"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/zzcsc;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/String;)V

    return-void
.end method
