.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"


# instance fields
.field private address:Ljava/lang/String;

.field private deviceClass:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceClass()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;->deviceClass:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;->address:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setDeviceClass(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "deviceClass"    # Ljava/lang/Integer;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;->deviceClass:Ljava/lang/Integer;

    .line 37
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;->type:Ljava/lang/Integer;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    instance-of v1, v0, Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
