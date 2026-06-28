.class public Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableObject;
.source "AnalyticsEvent.java"


# instance fields
.field private attributeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private category:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

.field private eventType:Ljava/lang/String;

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private name:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 32
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "category"    # Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;JLjava/util/Set;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "category"    # Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;
    .param p3, "eventType"    # Ljava/lang/String;
    .param p4, "timeStamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p6, "initialAttributeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 23
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v1

    iput-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 29
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    .line 44
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->name:Ljava/lang/String;

    .line 45
    if-nez p2, :cond_0

    .line 46
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    iput-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->category:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    .line 50
    :goto_0
    if-nez p3, :cond_1

    .line 51
    const-string v1, "Mobile"

    iput-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->eventType:Ljava/lang/String;

    .line 55
    :goto_1
    iput-wide p4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->timestamp:J

    .line 57
    if-eqz p6, :cond_2

    .line 58
    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 59
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-direct {v3, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 48
    .end local v0    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_0
    iput-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->category:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    goto :goto_0

    .line 53
    :cond_1
    iput-object p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->eventType:Ljava/lang/String;

    goto :goto_1

    .line 64
    :cond_2
    if-eqz p1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    new-instance v2, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v3, "name"

    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    new-instance v2, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v3, "timestamp"

    iget-wide v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    new-instance v2, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v3, "category"

    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->category:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    new-instance v2, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v3, "eventType"

    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->eventType:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "category"    # Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;
    .param p3, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p4, "initialAttributeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;JLjava/util/Set;)V

    .line 41
    return-void
.end method

.method public static newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    .locals 13
    .param p0, "analyticsEventJson"    # Lcom/newrelic/com/google/gson/JsonObject;

    .prologue
    const/4 v12, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 127
    .local v8, "entry":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;>;>;"
    const/4 v1, 0x0

    .line 128
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 129
    .local v3, "eventType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 130
    .local v2, "category":Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;
    const-wide/16 v4, 0x0

    .line 131
    .local v4, "timestamp":J
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 133
    .local v6, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 135
    .local v7, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 137
    .local v9, "key":Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 139
    :cond_1
    const-string v0, "category"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->fromString(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    move-result-object v2

    goto :goto_0

    .line 141
    :cond_2
    const-string v0, "eventType"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 143
    :cond_3
    const-string v0, "timestamp"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    goto :goto_0

    .line 146
    :cond_4
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v10

    .line 147
    .local v10, "value":Lcom/newrelic/com/google/gson/JsonPrimitive;
    invoke-virtual {v10}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-virtual {v10}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v11, v12}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_5
    invoke-virtual {v10}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-virtual {v10}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v11

    invoke-direct {v0, v9, v11, v12}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 151
    :cond_6
    invoke-virtual {v10}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-virtual {v10}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsFloat()F

    move-result v11

    invoke-direct {v0, v9, v11, v12}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;FZ)V

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 157
    .end local v7    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;>;"
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Lcom/newrelic/com/google/gson/JsonPrimitive;
    :cond_7
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    invoke-direct/range {v0 .. v6}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;JLjava/util/Set;)V

    return-object v0
.end method

.method public static newFromJson(Lcom/newrelic/com/google/gson/JsonArray;)Ljava/util/Collection;
    .locals 4
    .param p0, "analyticsEventsJson"    # Lcom/newrelic/com/google/gson/JsonArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/JsonArray;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/analytics/AnalyticsEvent;>;"
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 170
    .local v1, "entry":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/newrelic/com/google/gson/JsonElement;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/com/google/gson/JsonElement;

    .line 172
    .local v0, "e":Lcom/newrelic/com/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v3

    invoke-static {v3}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    .end local v0    # "e":Lcom/newrelic/com/google/gson/JsonElement;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public addAttributes(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    if-eqz p1, :cond_1

    .line 74
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 75
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": the event already contains that attribute."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v0    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_1
    return-void
.end method

.method public asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;
    .locals 5

    .prologue
    .line 100
    new-instance v1, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 101
    .local v1, "data":Lcom/newrelic/com/google/gson/JsonObject;
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 103
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->asJsonElement()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 105
    .end local v0    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    return-object v1
.end method

.method public getAttributeSet()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->attributeSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->category:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->timestamp:J

    return-wide v0
.end method
