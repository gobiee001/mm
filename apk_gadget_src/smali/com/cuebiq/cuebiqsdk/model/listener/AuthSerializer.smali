.class public Lcom/cuebiq/cuebiqsdk/model/listener/AuthSerializer;
.super Ljava/lang/Object;
.source "AuthSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;",
        ">;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;",
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
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;
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

    .line 34
    move-object v1, p1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 36
    .local v1, "obj":Lcom/google/gson/JsonObject;
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;-><init>()V

    .line 37
    .local v0, "auth":Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;
    const-string v2, "b"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "b"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->setAppPackageName(Ljava/lang/String;)V

    .line 38
    const-string v2, "c"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "c"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->setAppVersion(Ljava/lang/String;)V

    .line 39
    const-string v2, "d"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "d"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->setAppKey(Ljava/lang/String;)V

    .line 40
    const-string v2, "e"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "e"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->setAnonymousID(Ljava/lang/String;)V

    .line 41
    const-string v2, "f"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "f"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->setGoogleAdvertiserID(Ljava/lang/String;)V

    .line 42
    const-string v2, "j"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "j"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->setCustomPublisherID(Ljava/lang/String;)V

    .line 44
    return-object v0

    :cond_1
    move-object v2, v3

    .line 37
    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 38
    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 39
    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 40
    goto :goto_3

    :cond_5
    move-object v2, v3

    .line 41
    goto :goto_4
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/listener/AuthSerializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 3
    .param p1, "src"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 22
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 23
    .local v0, "root":Lcom/google/gson/JsonObject;
    const-string v1, "b"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v1, "c"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v1, "d"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "e"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->getAnonymousID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "f"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->getGoogleAdvertiserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "j"

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->getCustomPublisherID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/listener/AuthSerializer;->serialize(Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
