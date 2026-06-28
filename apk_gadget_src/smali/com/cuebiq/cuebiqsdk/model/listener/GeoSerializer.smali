.class public Lcom/cuebiq/cuebiqsdk/model/listener/GeoSerializer;
.super Ljava/lang/Object;
.source "GeoSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;",
        ">;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;",
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
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    .locals 6
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

    .line 32
    move-object v1, p1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 34
    .local v1, "obj":Lcom/google/gson/JsonObject;
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;-><init>()V

    .line 35
    .local v0, "geo":Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    const-string v2, "a"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->setAltitude(Ljava/lang/Double;)V

    .line 36
    const-string v2, "b"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "b"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->setHaccuracy(Ljava/lang/Float;)V

    .line 37
    const-string v2, "c"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "c"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->setLatitude(Ljava/lang/Double;)V

    .line 38
    const-string v2, "d"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "d"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->setLongitude(Ljava/lang/Double;)V

    .line 40
    return-object v0

    :cond_1
    move-object v2, v3

    .line 35
    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 36
    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 37
    goto :goto_2
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/listener/GeoSerializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 3
    .param p1, "src"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 22
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 23
    .local v0, "root":Lcom/google/gson/JsonObject;
    const-string v1, "a"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->getAltitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 24
    const-string v1, "b"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->getHaccuracy()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 25
    const-string v1, "c"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->getLatitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 26
    const-string v1, "d"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->getLongitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 27
    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/listener/GeoSerializer;->serialize(Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
