.class public Lcom/cuebiq/cuebiqsdk/model/processor/BluetoothProcessor;
.super Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;
.source "BluetoothProcessor.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->BLUETOOTH_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    invoke-direct {p0, v0}, Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;-><init>(Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;)V

    .line 25
    return-void
.end method


# virtual methods
.method public gather(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "information"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .param p3, "listener"    # Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;

    .prologue
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 30
    const-string v0, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const-string v0, "LocationManager -> Permission BLUETOOTH is not granted. Unable to acquire bluetooth signals."

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->BLUETOOTH_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    invoke-interface {p3, v0}, Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;->onProcessorCompleted(Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    goto :goto_0
.end method
