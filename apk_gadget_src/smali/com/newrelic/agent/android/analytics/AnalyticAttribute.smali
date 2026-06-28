.class public Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
.super Ljava/lang/Object;
.source "AnalyticAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID_ATTRIBUTE:Ljava/lang/String; = "accountId"

.field public static final APPLICATION_PLATFORM_ATTRIBUTE:Ljava/lang/String; = "platform"

.field public static final APPLICATION_PLATFORM_VERSION_ATTRIBUTE:Ljava/lang/String; = "platformVersion"

.field public static final APP_BUILD_ATTRIBUTE:Ljava/lang/String; = "appBuild"

.field public static final APP_ID_ATTRIBUTE:Ljava/lang/String; = "appId"

.field public static final APP_INSTALL_ATTRIBUTE:Ljava/lang/String; = "install"

.field public static final APP_NAME_ATTRIBUTE:Ljava/lang/String; = "appName"

.field public static final APP_UPGRADE_ATTRIBUTE:Ljava/lang/String; = "upgradeFrom"

.field public static final ARCHITECTURE_ATTRIBUTE:Ljava/lang/String; = "architecture"

.field public static final ATTRIBUTE_NAME_MAX_LENGTH:I = 0x100

.field public static final ATTRIBUTE_VALUE_MAX_LENGTH:I = 0x1000

.field public static final BYTES_RECEIVED_ATTRIBUTE:Ljava/lang/String; = "bytesReceived"

.field public static final BYTES_SENT_ATTRIBUTE:Ljava/lang/String; = "byteSent"

.field public static final CARRIER_ATTRIBUTE:Ljava/lang/String; = "carrier"

.field public static final CONNECTION_TYPE_ATTRIBUTE:Ljava/lang/String; = "connectionType"

.field public static final DEVICE_MANUFACTURER_ATTRIBUTE:Ljava/lang/String; = "deviceManufacturer"

.field public static final DEVICE_MODEL_ATTRIBUTE:Ljava/lang/String; = "deviceModel"

.field private static final DOUBLE_ATTRIBUTE_FORMAT:Ljava/lang/String; = "\"%s\"=%f"

.field public static final EVENT_CATEGORY_ATTRIBUTE:Ljava/lang/String; = "category"

.field public static final EVENT_NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field public static final EVENT_NAME_ATTRIBUTE_REQUEST_ERROR:Ljava/lang/String; = "requestError"

.field public static final EVENT_TIMESTAMP_ATTRIBUTE:Ljava/lang/String; = "timestamp"

.field public static final EVENT_TIME_SINCE_LOAD_ATTRIBUTE:Ljava/lang/String; = "timeSinceLoad"

.field public static final EVENT_TYPE_ATTRIBUTE:Ljava/lang/String; = "eventType"

.field public static final EVENT_TYPE_ATTRIBUTE_MOBILE:Ljava/lang/String; = "Mobile"

.field public static final EVENT_TYPE_ATTRIBUTE_MOBILE_BREADCRUMB:Ljava/lang/String; = "MobileBreadcrumb"

.field public static final EVENT_TYPE_ATTRIBUTE_MOBILE_CRASH:Ljava/lang/String; = "MobileCrash"

.field public static final EVENT_TYPE_ATTRIBUTE_MOBILE_REQUEST:Ljava/lang/String; = "MobileRequest"

.field public static final EVENT_TYPE_ATTRIBUTE_MOBILE_REQUEST_ERROR:Ljava/lang/String; = "MobileRequestError"

.field public static final INTERACTION_DURATION_ATTRIBUTE:Ljava/lang/String; = "interactionDuration"

.field public static final LAST_INTERACTION_ATTRIBUTE:Ljava/lang/String; = "lastInteraction"

.field public static final MEM_USAGE_MB_ATTRIBUTE:Ljava/lang/String; = "memUsageMb"

.field public static final NETWORK_ERROR_CODE_ATTRIBUTE:Ljava/lang/String; = "networkErrorCode"

.field public static final NEW_RELIC_VERSION_ATTRIBUTE:Ljava/lang/String; = "newRelicVersion"

.field public static final OS_BUILD_ATTRIBUTE:Ljava/lang/String; = "osBuild"

.field public static final OS_MAJOR_VERSION_ATTRIBUTE:Ljava/lang/String; = "osMajorVersion"

.field public static final OS_NAME_ATTRIBUTE:Ljava/lang/String; = "osName"

.field public static final OS_VERSION_ATTRIBUTE:Ljava/lang/String; = "osVersion"

.field public static final REQUEST_DOMAIN_ATTRIBUTE:Ljava/lang/String; = "requestDomain"

.field public static final REQUEST_METHOD_ATTRIBUTE:Ljava/lang/String; = "requestMethod"

.field public static final REQUEST_PATH_ATTRIBUTE:Ljava/lang/String; = "requestPath"

.field public static final REQUEST_URL_ATTRIBUTE:Ljava/lang/String; = "requestUrl"

.field public static final RESPONSE_TIME_ATTRIBUTE:Ljava/lang/String; = "responseTime"

.field public static final RUNTIME_ATTRIBUTE:Ljava/lang/String; = "runTime"

.field public static final SESSION_DURATION_ATTRIBUTE:Ljava/lang/String; = "sessionDuration"

.field public static final SESSION_ID_ATTRIBUTE:Ljava/lang/String; = "sessionId"

.field public static final SESSION_TIME_SINCE_LOAD_ATTRIBUTE:Ljava/lang/String; = "timeSinceLoad"

.field public static final STATUS_CODE_ATTRIBUTE:Ljava/lang/String; = "statusCode"

.field private static final STRING_ATTRIBUTE_FORMAT:Ljava/lang/String; = "\"%s\"=\"%s\""

.field public static final TYPE_ATTRIBUTE:Ljava/lang/String; = "type"

.field public static final USER_ID_ATTRIBUTE:Ljava/lang/String; = "userId"

.field public static final UUID_ATTRIBUTE:Ljava/lang/String; = "uuid"

.field protected static blackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

.field private floatValue:F

.field private isPersistent:Z

.field private name:Ljava/lang/String;

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$1;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$1;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->blackList:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    .line 96
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    .line 98
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->VOID:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V
    .locals 1
    .param p1, "clone"    # Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iget-object v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    .line 136
    iget v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    iput v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    .line 137
    iget-object v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    .line 138
    iget-boolean v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    iput-boolean v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    .line 139
    iget-object v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "floatValue"    # F

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;FZ)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "floatValue"    # F
    .param p3, "isPersistent"    # Z

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    .line 119
    invoke-virtual {p0, p2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setFloatValue(F)V

    .line 120
    iput-boolean p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stringValue"    # Ljava/lang/String;
    .param p3, "isPersistent"    # Z

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, p2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setStringValue(Ljava/lang/String;)V

    .line 109
    iput-boolean p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "boolValue"    # Z

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;ZZ)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "boolValue"    # Z
    .param p3, "isPersistent"    # Z

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    .line 130
    invoke-virtual {p0, p2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setBooleanValue(Z)V

    .line 131
    iput-boolean p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    .line 132
    return-void
.end method

.method public static isAttributeBlacklisted(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z
    .locals 2
    .param p0, "attribute"    # Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .prologue
    .line 241
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->blackList:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Ljava/util/Set;
    .locals 8
    .param p0, "attributesJson"    # Lcom/newrelic/com/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/JsonObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 297
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 298
    .local v0, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 300
    .local v2, "entry":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 301
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 302
    .local v1, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/newrelic/com/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v4

    .line 305
    .local v4, "value":Lcom/newrelic/com/google/gson/JsonPrimitive;
    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isString()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    new-instance v5, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 308
    new-instance v5, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v6

    invoke-direct {v5, v3, v6, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isNumber()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    new-instance v5, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsFloat()F

    move-result v6

    invoke-direct {v5, v3, v6, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;FZ)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    .end local v4    # "value":Lcom/newrelic/com/google/gson/JsonPrimitive;
    :cond_3
    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v3, v5, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    .end local v1    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_4
    return-object v0
.end method


# virtual methods
.method public asJsonElement()Lcom/newrelic/com/google/gson/JsonElement;
    .locals 3

    .prologue
    .line 275
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$2;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticAttribute$AttributeDataType:[I

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 289
    const/4 v0, 0x0

    .line 293
    .local v0, "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    :goto_0
    return-object v0

    .line 277
    .end local v0    # "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    :pswitch_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v0

    .line 278
    .restart local v0    # "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    goto :goto_0

    .line 281
    .end local v0    # "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    :pswitch_1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getFloatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/Number;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v0

    .line 282
    .restart local v0    # "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    goto :goto_0

    .line 285
    .end local v0    # "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    :pswitch_2
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getBooleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/Boolean;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v0

    .line 286
    .restart local v0    # "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    if-ne p0, p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 200
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

    .line 202
    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 204
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAttributeDataType()Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->BOOLEAN:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFloatValue()F
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->FLOAT:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->STRING:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBooleanAttribute()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->BOOLEAN:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloatAttribute()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->FLOAT:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isAttributeBlacklisted(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStringAttribute()Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->STRING:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBooleanValue(Z)V
    .locals 1
    .param p1, "boolValue"    # Z

    .prologue
    .line 183
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    .line 184
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    .line 185
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->BOOLEAN:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    .line 186
    return-void
.end method

.method public setFloatValue(F)V
    .locals 1
    .param p1, "floatValue"    # F

    .prologue
    .line 173
    iput p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->FLOAT:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    .line 176
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "isPersistent"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    .line 195
    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    .line 164
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    .line 165
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->STRING:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnalyticAttribute{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$2;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticAttribute$AttributeDataType:[I

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 234
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",isPersistent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 224
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",stringValue=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 227
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",floatValue=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",booleanValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public valueAsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$2;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticAttribute$AttributeDataType:[I

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 265
    const/4 v0, 0x0

    .line 269
    .local v0, "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 253
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_0
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    .line 254
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 257
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_1
    iget v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 261
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getBooleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
