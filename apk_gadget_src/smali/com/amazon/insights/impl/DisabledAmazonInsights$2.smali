.class Lcom/amazon/insights/impl/DisabledAmazonInsights$2;
.super Ljava/lang/Object;
.source "DisabledAmazonInsights.java"

# interfaces
.implements Lcom/amazon/insights/EventClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/impl/DisabledAmazonInsights;->getEventClient()Lcom/amazon/insights/EventClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/impl/DisabledAmazonInsights;


# direct methods
.method constructor <init>(Lcom/amazon/insights/impl/DisabledAmazonInsights;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2;->this$0:Lcom/amazon/insights/impl/DisabledAmazonInsights;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGlobalAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 144
    return-void
.end method

.method public addGlobalAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 148
    return-void
.end method

.method public addGlobalMetric(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;
    .param p2, "metricValue"    # Ljava/lang/Number;

    .prologue
    .line 152
    return-void
.end method

.method public addGlobalMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "metricName"    # Ljava/lang/String;
    .param p3, "metricValue"    # Ljava/lang/Number;

    .prologue
    .line 156
    return-void
.end method

.method public createEvent(Ljava/lang/String;)Lcom/amazon/insights/Event;
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 51
    move-object v2, p1

    .line 52
    .local v2, "theEventName":Ljava/lang/String;
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 53
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 54
    .local v1, "metrics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Number;>;"
    new-instance v3, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;-><init>(Lcom/amazon/insights/impl/DisabledAmazonInsights$2;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-object v3
.end method

.method public recordEvent(Lcom/amazon/insights/Event;)V
    .locals 0
    .param p1, "event"    # Lcom/amazon/insights/Event;

    .prologue
    .line 47
    return-void
.end method

.method public removeGlobalAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 160
    return-void
.end method

.method public removeGlobalAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 164
    return-void
.end method

.method public removeGlobalMetric(Ljava/lang/String;)V
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 168
    return-void
.end method

.method public removeGlobalMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "metricName"    # Ljava/lang/String;

    .prologue
    .line 172
    return-void
.end method

.method public submitEvents()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method
