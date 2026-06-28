.class Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;
.super Ljava/lang/Object;
.source "DisabledAmazonInsights.java"

# interfaces
.implements Lcom/amazon/insights/Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/impl/DisabledAmazonInsights$2;->createEvent(Ljava/lang/String;)Lcom/amazon/insights/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/insights/impl/DisabledAmazonInsights$2;

.field final synthetic val$attributes:Ljava/util/Map;

.field final synthetic val$metrics:Ljava/util/Map;

.field final synthetic val$theEventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/insights/impl/DisabledAmazonInsights$2;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->this$1:Lcom/amazon/insights/impl/DisabledAmazonInsights$2;

    iput-object p2, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$attributes:Ljava/util/Map;

    iput-object p3, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$metrics:Ljava/util/Map;

    iput-object p4, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$theEventName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    if-eqz p2, :cond_1

    .line 62
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addMetric(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    if-eqz p2, :cond_1

    .line 83
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$metrics:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$metrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAllAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$attributes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllMetrics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$metrics:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$theEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getMetric(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$metrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasMetric(Ljava/lang/String;)Z
    .locals 1
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->val$metrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-object p0
.end method

.method public withMetric(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/Event;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/amazon/insights/impl/DisabledAmazonInsights$2$1;->addMetric(Ljava/lang/String;Ljava/lang/Number;)V

    .line 127
    return-object p0
.end method
