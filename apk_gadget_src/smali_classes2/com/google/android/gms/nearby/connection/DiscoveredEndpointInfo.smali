.class public final Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;
.super Ljava/lang/Object;


# instance fields
.field private final zzjna:Ljava/lang/String;

.field private final zzjnd:Ljava/lang/String;

.field private final zzjne:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzjnd:Ljava/lang/String;

    const-string v0, "__UNRECOGNIZED_BLUETOOTH_DEVICE__"

    iput-object v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzjna:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzjne:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzjnd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzjna:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzjne:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final getEndpointName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzjna:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;->zzjnd:Ljava/lang/String;

    return-object v0
.end method
