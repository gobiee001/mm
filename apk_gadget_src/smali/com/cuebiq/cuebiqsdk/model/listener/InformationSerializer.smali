.class public Lcom/cuebiq/cuebiqsdk/model/listener/InformationSerializer;
.super Ljava/lang/Object;
.source "InformationSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;",
        ">;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .locals 11
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 43
    move-object v2, p1

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 45
    .local v2, "obj":Lcom/google/gson/JsonObject;
    new-instance v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-direct {v1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;-><init>()V

    .line 46
    .local v1, "information":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    const-string v5, "a"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    const-class v6, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    invoke-interface {p3, v5, v6}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    invoke-virtual {v1, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setEvent(Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;)V

    .line 47
    const-string v5, "d"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    const-class v6, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    invoke-interface {p3, v5, v6}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    invoke-virtual {v1, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setGeo(Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;)V

    .line 48
    const-string v5, "e"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "e"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v6

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setTimestamp(Ljava/lang/Long;)V

    .line 49
    const-string v5, "f"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v5, "f"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_1
    invoke-virtual {v1, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setBatteryLevel(Ljava/lang/Float;)V

    .line 51
    new-instance v4, Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    invoke-direct {v4}, Lcom/cuebiq/cuebiqsdk/utils/WifiList;-><init>()V

    .line 52
    .local v4, "wifiList":Lcom/cuebiq/cuebiqsdk/utils/WifiList;
    const-string v5, "g"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    const-string v5, "g"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 54
    .local v0, "element":Lcom/google/gson/JsonElement;
    const-class v6, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;

    invoke-interface {p3, v0, v6}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;

    .line 55
    .local v3, "wifi":Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;
    invoke-virtual {v4, v3}, Lcom/cuebiq/cuebiqsdk/utils/WifiList;->add(Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;)Z

    goto :goto_2

    .end local v0    # "element":Lcom/google/gson/JsonElement;
    .end local v3    # "wifi":Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;
    .end local v4    # "wifiList":Lcom/cuebiq/cuebiqsdk/utils/WifiList;
    :cond_0
    move-wide v6, v8

    .line 48
    goto :goto_0

    :cond_1
    move-object v5, v10

    .line 49
    goto :goto_1

    .line 58
    .restart local v4    # "wifiList":Lcom/cuebiq/cuebiqsdk/utils/WifiList;
    :cond_2
    invoke-virtual {v1, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setWifis(Lcom/cuebiq/cuebiqsdk/utils/WifiList;)V

    .line 60
    const-string v5, "h"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v5, "h"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_3
    invoke-virtual {v1, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setDebugMode(Ljava/lang/Boolean;)V

    .line 61
    const-string v5, "j"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v5, "j"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v1, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setDataConnectionType(Ljava/lang/String;)V

    .line 62
    const-string v5, "k"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "k"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v8

    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setLastSeen(Ljava/lang/Long;)V

    .line 63
    const-string v5, "l"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v5, "l"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_5
    invoke-virtual {v1, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setIsRoaming(Ljava/lang/Boolean;)V

    .line 64
    const-string v5, "n"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v5, "n"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v1, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setIpAddressV4(Ljava/lang/String;)V

    .line 65
    const-string v5, "o"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v5, "o"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    :cond_4
    invoke-virtual {v1, v10}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setIpAddressV6(Ljava/lang/String;)V

    .line 67
    return-object v1

    :cond_5
    move-object v5, v10

    .line 60
    goto :goto_3

    :cond_6
    move-object v5, v10

    .line 61
    goto :goto_4

    :cond_7
    move-object v5, v10

    .line 63
    goto :goto_5

    :cond_8
    move-object v5, v10

    .line 64
    goto :goto_6
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/listener/InformationSerializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 3
    .param p1, "src"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 26
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 27
    .local v0, "root":Lcom/google/gson/JsonObject;
    const-string v1, "a"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getEvent()Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 28
    const-string v1, "d"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getGeo()Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 29
    const-string v1, "e"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 30
    const-string v1, "f"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 31
    const-string v1, "g"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getWifis()Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 32
    const-string v1, "h"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getDebugMode()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 33
    const-string v1, "j"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getDataConnectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "k"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getLastSeen()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 35
    const-string v1, "l"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getIsRoaming()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 36
    const-string v1, "n"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getIpAddressV4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "o"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getIpAddressV6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/listener/InformationSerializer;->serialize(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
