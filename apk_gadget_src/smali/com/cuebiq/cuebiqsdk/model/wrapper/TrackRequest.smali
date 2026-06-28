.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
.super Ljava/lang/Object;
.source "TrackRequest.java"


# instance fields
.field private auth:Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

.field private device:Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

.field private information:Lcom/cuebiq/cuebiqsdk/utils/InformationList;

.field private installedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pairedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private settingsVersion:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuth()Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->auth:Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    return-object v0
.end method

.method public getDevice()Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->device:Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    return-object v0
.end method

.method public getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->information:Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    return-object v0
.end method

.method public getInstalledApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->installedApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPairedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->pairedDevices:Ljava/util/List;

    return-object v0
.end method

.method public getSettingsVersion()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->settingsVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAuth(Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;)V
    .locals 0
    .param p1, "auth"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->auth:Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    .line 57
    return-void
.end method

.method public setDevice(Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;)V
    .locals 0
    .param p1, "device"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->device:Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    .line 65
    return-void
.end method

.method public setInformation(Lcom/cuebiq/cuebiqsdk/utils/InformationList;)V
    .locals 0
    .param p1, "information"    # Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->information:Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    .line 73
    return-void
.end method

.method public setInstalledApps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "installedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->installedApps:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public setPairedDevices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "pairedDevices":Ljava/util/List;, "Ljava/util/List<Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;>;"
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->pairedDevices:Ljava/util/List;

    .line 37
    return-void
.end method

.method public setSettingsVersion(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "settingsVersion"    # Ljava/lang/Integer;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->settingsVersion:Ljava/lang/Integer;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
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
