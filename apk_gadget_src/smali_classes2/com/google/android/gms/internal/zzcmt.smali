.class public final Lcom/google/android/gms/internal/zzcmt;
.super Lcom/google/android/gms/common/internal/zzab;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzab",
        "<",
        "Lcom/google/android/gms/internal/zzcqm;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzjnw:J

.field private final zzjnx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzcng;",
            ">;"
        }
    .end annotation
.end field

.field private final zzjny:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzcmv;",
            ">;"
        }
    .end annotation
.end field

.field private zzjnz:Lcom/google/android/gms/internal/zzcrx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x36

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzab;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjnx:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjny:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjnw:J

    return-void
.end method

.method private final reset()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjnx:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcng;->shutdown()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjny:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcmv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcmv;->shutdown()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjnx:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjny:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjnz:Lcom/google/android/gms/internal/zzcrx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjnz:Lcom/google/android/gms/internal/zzcrx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcrx;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjnz:Lcom/google/android/gms/internal/zzcrx;

    :cond_2
    return-void
.end method

.method private static zzcn(I)Lcom/google/android/gms/common/api/Status;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Lcom/google/android/gms/nearby/connection/ConnectionsStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static synthetic zzec(I)Lcom/google/android/gms/common/api/Status;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzcmt;->zzcn(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final disconnect()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcqm;

    new-instance v1, Lcom/google/android/gms/internal/zzcmr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcmr;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcmr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcmt;->reset()V

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzab;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Failed to notify client disconnect."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final disconnectFromEndpoint(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcqm;

    new-instance v1, Lcom/google/android/gms/internal/zzcpt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcpt;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcpt;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcmt;->reset()V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzab;->onConnectionSuspended(I)V

    return-void
.end method

.method public final stopAdvertising()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcqm;

    new-instance v1, Lcom/google/android/gms/internal/zzcso;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcso;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcso;)V

    return-void
.end method

.method public final stopAllEndpoints()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcqm;

    new-instance v1, Lcom/google/android/gms/internal/zzcsq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcsq;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcsq;)V

    return-void
.end method

.method public final stopDiscovery()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcqm;

    new-instance v1, Lcom/google/android/gms/internal/zzcss;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcss;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcss;)V

    return-void
.end method

.method protected final synthetic zza(Landroid/os/IInterface;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzcqm;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzab;->zza(Landroid/os/IInterface;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcrx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcrx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjnz:Lcom/google/android/gms/internal/zzcrx;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzn;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcqm;

    new-instance v1, Lcom/google/android/gms/internal/zzcmp;

    new-instance v2, Lcom/google/android/gms/internal/zzcnu;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzcnu;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3}, Lcom/google/android/gms/internal/zzcmp;-><init>(Landroid/os/IBinder;J)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcmp;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/zzcqm;

    new-instance v0, Lcom/google/android/gms/internal/zzcmn;

    new-instance v1, Lcom/google/android/gms/internal/zzcnu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcnu;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/zzcnr;

    invoke-direct {v3, p3}, Lcom/google/android/gms/internal/zzcnr;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v3, p2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcmn;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcmn;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
            ">;",
            "Lcom/google/android/gms/nearby/connection/DiscoveryOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v3, Lcom/google/android/gms/internal/zzcng;

    invoke-direct {v3, p3}, Lcom/google/android/gms/internal/zzcng;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjnx:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/zzcqm;

    new-instance v0, Lcom/google/android/gms/internal/zzcsm;

    new-instance v1, Lcom/google/android/gms/internal/zzcnu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcnu;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v3, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcsm;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/DiscoveryOptions;Landroid/os/IBinder;)V

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcsm;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/gms/internal/zzcmv;

    invoke-direct {v3, p4}, Lcom/google/android/gms/internal/zzcmv;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjny:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/zzcqm;

    new-instance v0, Lcom/google/android/gms/internal/zzcsg;

    new-instance v1, Lcom/google/android/gms/internal/zzcnu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcnu;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcsg;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcsg;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/zzci",
            "<",
            "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
            ">;",
            "Lcom/google/android/gms/nearby/connection/AdvertisingOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/internal/zzcmv;

    invoke-direct {v4, p4}, Lcom/google/android/gms/internal/zzcmv;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjny:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcqm;

    new-instance v1, Lcom/google/android/gms/internal/zzcsk;

    new-instance v2, Lcom/google/android/gms/internal/zzcnw;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzcnw;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    move-object v4, p2

    move-object v5, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzcsk;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/AdvertisingOptions;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcsk;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzn;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/Payload;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/google/android/gms/internal/zzcsb;->zza(Lcom/google/android/gms/nearby/connection/Payload;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcqm;

    new-instance v3, Lcom/google/android/gms/internal/zzcsi;

    new-instance v1, Lcom/google/android/gms/internal/zzcnu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcnu;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/zzcrz;

    invoke-direct {v3, v4, p2, v1, p4}, Lcom/google/android/gms/internal/zzcsi;-><init>(Landroid/os/IBinder;[Ljava/lang/String;Lcom/google/android/gms/internal/zzcrz;Z)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcsi;)V

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmt;->zzjnz:Lcom/google/android/gms/internal/zzcrx;

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->asStream()Lcom/google/android/gms/nearby/connection/Payload$Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/nearby/connection/Payload$Stream;->asInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcrx;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;J)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x1f4d

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcmt;->zzcn(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final zzaap()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "clientId"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcmt;->zzjnw:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcqm;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzcqm;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcqn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcqn;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected final zzhi()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.connection.service.START"

    return-object v0
.end method

.method protected final zzhj()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    return-object v0
.end method

.method public final zzj(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcqm;

    new-instance v1, Lcom/google/android/gms/internal/zzcse;

    new-instance v2, Lcom/google/android/gms/internal/zzcnu;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzcnu;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzev;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/zzcse;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcqm;->zza(Lcom/google/android/gms/internal/zzcse;)V

    return-void
.end method
