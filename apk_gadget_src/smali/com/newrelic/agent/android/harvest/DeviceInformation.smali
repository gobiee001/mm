.class public Lcom/newrelic/agent/android/harvest/DeviceInformation;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "DeviceInformation.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private agentName:Ljava/lang/String;

.field private agentVersion:Ljava/lang/String;

.field private applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

.field private applicationPlatformVersion:Ljava/lang/String;

.field private architecture:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private misc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/String;

.field private osBuild:Ljava/lang/String;

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private regionCode:Ljava/lang/String;

.field private runTime:Ljava/lang/String;

.field private size:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addMisc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 6

    .prologue
    .line 38
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 40
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 41
    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 43
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 44
    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 47
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 49
    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 51
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 52
    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 54
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 55
    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 57
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 58
    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 61
    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->countryCode:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->optional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 62
    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->regionCode:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->optional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 65
    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v2, "miscMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

    if-eqz v3, :cond_1

    .line 72
    const-string v3, "platform"

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/ApplicationPlatform;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->applicationPlatformVersion:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 74
    const-string v3, "platformVersion"

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->applicationPlatformVersion:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_1
    new-instance v3, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v3}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    sget-object v4, Lcom/newrelic/agent/android/harvest/DeviceInformation;->GSON_STRING_MAP_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v2, v4}, Lcom/newrelic/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v1

    .line 79
    .local v1, "map":Lcom/newrelic/com/google/gson/JsonElement;
    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 81
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    if-ne p0, p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 234
    check-cast v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .line 236
    .local v0, "that":Lcom/newrelic/agent/android/harvest/DeviceInformation;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 237
    :cond_6
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 238
    :cond_9
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->architecture:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->architecture:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->architecture:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->architecture:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 239
    :cond_c
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    goto :goto_0

    :cond_e
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 240
    :cond_f
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    goto :goto_0

    :cond_11
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 241
    :cond_12
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    move v1, v2

    goto/16 :goto_0

    :cond_14
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 242
    :cond_15
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osBuild:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osBuild:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osBuild:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_16
    move v1, v2

    goto/16 :goto_0

    :cond_17
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osBuild:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 243
    :cond_18
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_19
    move v1, v2

    goto/16 :goto_0

    :cond_1a
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    if-nez v3, :cond_19

    .line 244
    :cond_1b
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1c
    move v1, v2

    goto/16 :goto_0

    :cond_1d
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 245
    :cond_1e
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->runTime:Ljava/lang/String;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->runTime:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->runTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    :cond_1f
    move v1, v2

    goto/16 :goto_0

    :cond_20
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->runTime:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 246
    :cond_21
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->size:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->size:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->size:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto/16 :goto_0

    :cond_22
    iget-object v3, v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->size:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAgentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationPlatform()Lcom/newrelic/agent/android/ApplicationPlatform;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

    return-object v0
.end method

.method public getApplicationPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->applicationPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->architecture:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOsBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osBuild:Ljava/lang/String;

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->regionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRunTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->runTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->size:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 254
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 255
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osBuild:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osBuild:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 256
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 257
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 258
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 259
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 260
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 261
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->architecture:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->architecture:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 262
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->runTime:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->runTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v3, v2

    .line 263
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->size:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->size:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 264
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 253
    goto/16 :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 254
    goto/16 :goto_1

    :cond_3
    move v2, v1

    .line 255
    goto :goto_2

    :cond_4
    move v2, v1

    .line 256
    goto :goto_3

    :cond_5
    move v2, v1

    .line 257
    goto :goto_4

    :cond_6
    move v2, v1

    .line 258
    goto :goto_5

    :cond_7
    move v2, v1

    .line 259
    goto :goto_6

    :cond_8
    move v2, v1

    .line 260
    goto :goto_7

    :cond_9
    move v2, v1

    .line 261
    goto :goto_8

    :cond_a
    move v2, v1

    .line 262
    goto :goto_9
.end method

.method public setAgentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentName"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setAgentVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentVersion"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setApplicationPlatform(Lcom/newrelic/agent/android/ApplicationPlatform;)V
    .locals 0
    .param p1, "applicationPlatform"    # Lcom/newrelic/agent/android/ApplicationPlatform;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->applicationPlatform:Lcom/newrelic/agent/android/ApplicationPlatform;

    .line 139
    return-void
.end method

.method public setApplicationPlatformVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationPlatformVersion"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->applicationPlatformVersion:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 0
    .param p1, "architecture"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->architecture:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->countryCode:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setMisc(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "misc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    .line 147
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setOsBuild(Ljava/lang/String;)V
    .locals 0
    .param p1, "osBuild"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osBuild:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "osName"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setRegionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->regionCode:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setRunTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "runTime"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->runTime:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->size:Ljava/lang/String;

    .line 134
    const-string v0, "size"

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->addMisc(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInformation{manufacturer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", osName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", osVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", agentName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", agentVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countryCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regionCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->regionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
