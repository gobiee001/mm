.class public Lcom/cuebiq/cuebiqsdk/model/listener/RequestSerializer;
.super Ljava/lang/Object;
.source "RequestSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;",
        ">;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .locals 10
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 40
    move-object v6, p1

    check-cast v6, Lcom/google/gson/JsonObject;

    .line 42
    .local v6, "obj":Lcom/google/gson/JsonObject;
    new-instance v7, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-direct {v7}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;-><init>()V

    .line 43
    .local v7, "request":Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    const-string v8, "a"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    const-class v9, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    invoke-interface {p3, v8, v9}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    invoke-virtual {v7, v8}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setAuth(Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;)V

    .line 44
    const-string v8, "b"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    const-class v9, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    invoke-interface {p3, v8, v9}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    invoke-virtual {v7, v8}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setDevice(Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;)V

    .line 46
    const-string v8, "c"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 47
    new-instance v5, Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    invoke-direct {v5}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;-><init>()V

    .line 48
    .local v5, "informationList":Lcom/cuebiq/cuebiqsdk/utils/InformationList;
    const-string v8, "c"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    .line 49
    .local v3, "element":Lcom/google/gson/JsonElement;
    const-class v9, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-interface {p3, v3, v9}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    .line 50
    .local v4, "information":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    invoke-virtual {v5, v4}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->add(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)Z

    goto :goto_0

    .line 52
    .end local v3    # "element":Lcom/google/gson/JsonElement;
    .end local v4    # "information":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    :cond_0
    invoke-virtual {v7, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setInformation(Lcom/cuebiq/cuebiqsdk/utils/InformationList;)V

    .line 55
    .end local v5    # "informationList":Lcom/cuebiq/cuebiqsdk/utils/InformationList;
    :cond_1
    const-string v8, "d"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "d"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    .line 58
    .restart local v3    # "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    .end local v3    # "element":Lcom/google/gson/JsonElement;
    :cond_2
    invoke-virtual {v7, v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setInstalledApps(Ljava/util/ArrayList;)V

    .line 63
    .end local v0    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v8, "e"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v2, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;>;"
    const-string v8, "e"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    .line 66
    .restart local v3    # "element":Lcom/google/gson/JsonElement;
    const-class v9, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;

    invoke-interface {p3, v3, v9}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;

    .line 67
    .local v1, "device":Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 69
    .end local v1    # "device":Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;
    .end local v3    # "element":Lcom/google/gson/JsonElement;
    :cond_4
    invoke-virtual {v7, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setPairedDevices(Ljava/util/List;)V

    .line 73
    .end local v2    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;>;"
    :cond_5
    const-string v8, "v"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v8, "v"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_3
    invoke-virtual {v7, v8}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setSettingsVersion(Ljava/lang/Integer;)V

    .line 75
    return-object v7

    .line 73
    :cond_6
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/listener/RequestSerializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 3
    .param p1, "src"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 28
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 29
    .local v0, "root":Lcom/google/gson/JsonObject;
    const-string v1, "a"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getAuth()Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 30
    const-string v1, "b"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getDevice()Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 31
    const-string v1, "c"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 32
    const-string v1, "d"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInstalledApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 33
    const-string v1, "e"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getPairedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 34
    const-string v1, "v"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getSettingsVersion()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 35
    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/listener/RequestSerializer;->serialize(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
