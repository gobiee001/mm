.class public Lcom/cuebiq/cuebiqsdk/model/listener/DeviceSerializer;
.super Ljava/lang/Object;
.source "DeviceSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;",
        ">;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;
    .locals 4
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 43
    move-object v1, p1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 45
    .local v1, "obj":Lcom/google/gson/JsonObject;
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;-><init>()V

    .line 46
    .local v0, "device":Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;
    const-string v2, "a"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setBrand(Ljava/lang/String;)V

    .line 47
    const-string v2, "b"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "b"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setDeviceType(Ljava/lang/String;)V

    .line 48
    const-string v2, "e"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "e"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setIsGoogleAdvIDDisabled(Ljava/lang/Boolean;)V

    .line 49
    const-string v2, "g"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "g"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setManufacturer(Ljava/lang/String;)V

    .line 50
    const-string v2, "h"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "h"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setModel(Ljava/lang/String;)V

    .line 51
    const-string v2, "i"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "i"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_5
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setOsv(Ljava/lang/Integer;)V

    .line 52
    const-string v2, "j"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "j"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setProduct(Ljava/lang/String;)V

    .line 53
    const-string v2, "l"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "l"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setLocale(Ljava/lang/String;)V

    .line 54
    const-string v2, "m"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "m"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setScreenSize(Ljava/lang/String;)V

    .line 55
    const-string v2, "n"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v2, "n"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setTimezone(Ljava/lang/String;)V

    .line 56
    const-string v2, "o"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v2, "o"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_a
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setTimezoneOffset(Ljava/lang/Integer;)V

    .line 57
    const-string v2, "s"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v2, "s"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setCarrierCode(Ljava/lang/String;)V

    .line 58
    const-string v2, "t"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v2, "t"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setUserAgent(Ljava/lang/String;)V

    .line 59
    const-string v2, "w"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v2, "w"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_d
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setBluetoothActive(Ljava/lang/Boolean;)V

    .line 60
    const-string v2, "x"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setCarrierName(Ljava/lang/String;)V

    .line 62
    return-object v0

    :cond_1
    move-object v2, v3

    .line 46
    goto/16 :goto_0

    :cond_2
    move-object v2, v3

    .line 47
    goto/16 :goto_1

    :cond_3
    move-object v2, v3

    .line 48
    goto/16 :goto_2

    :cond_4
    move-object v2, v3

    .line 49
    goto/16 :goto_3

    :cond_5
    move-object v2, v3

    .line 50
    goto/16 :goto_4

    :cond_6
    move-object v2, v3

    .line 51
    goto/16 :goto_5

    :cond_7
    move-object v2, v3

    .line 52
    goto/16 :goto_6

    :cond_8
    move-object v2, v3

    .line 53
    goto/16 :goto_7

    :cond_9
    move-object v2, v3

    .line 54
    goto/16 :goto_8

    :cond_a
    move-object v2, v3

    .line 55
    goto/16 :goto_9

    :cond_b
    move-object v2, v3

    .line 56
    goto :goto_a

    :cond_c
    move-object v2, v3

    .line 57
    goto :goto_b

    :cond_d
    move-object v2, v3

    .line 58
    goto :goto_c

    :cond_e
    move-object v2, v3

    .line 59
    goto :goto_d
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/listener/DeviceSerializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 3
    .param p1, "src"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 22
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 23
    .local v0, "root":Lcom/google/gson/JsonObject;
    const-string v1, "a"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v1, "b"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v1, "e"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getIsGoogleAdvIDDisabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 26
    const-string v1, "g"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "h"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "i"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getOsv()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 29
    const-string v1, "j"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "l"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "m"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "n"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "o"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getTimezoneOffset()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 34
    const-string v1, "s"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getCarrierCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "t"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "w"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getBluetoothActive()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 37
    const-string v1, "x"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->getCarrierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/listener/DeviceSerializer;->serialize(Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
