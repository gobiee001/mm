.class Lcom/amazon/device/ads/AAXParameter$PublisherKeywordsParameter;
.super Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PublisherKeywordsParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 335
    const-string v0, "pk"

    const-string v1, "debug.pk"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$JSONArrayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method


# virtual methods
.method protected bridge synthetic applyPostParameterProcessing(Ljava/lang/Object;Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;

    .prologue
    .line 331
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/AAXParameter$PublisherKeywordsParameter;->applyPostParameterProcessing(Lorg/json/JSONArray;Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected applyPostParameterProcessing(Lorg/json/JSONArray;Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONArray;
    .locals 4
    .param p1, "value"    # Lorg/json/JSONArray;
    .param p2, "parameterData"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 343
    new-instance p1, Lorg/json/JSONArray;

    .end local p1    # "value":Lorg/json/JSONArray;
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 345
    .restart local p1    # "value":Lorg/json/JSONArray;
    :cond_0
    invoke-static {p2}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$200(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdTargetingOptions;->getInternalPublisherKeywords()Ljava/util/HashSet;

    move-result-object v2

    .line 346
    .local v2, "pks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 348
    .local v1, "pk":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 350
    .end local v1    # "pk":Ljava/lang/String;
    :cond_1
    return-object p1
.end method
