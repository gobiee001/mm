.class Lcom/amazon/device/ads/AAXParameter$VideoOptionsParameter;
.super Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoOptionsParameter"
.end annotation


# static fields
.field private static final MAXIMUM_DURATION_DEFAULT:I = 0x7530

.field private static final MINIMUM_DURATION_DEFAULT:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 642
    const-string v0, "video"

    const-string v1, "debug.videoOptions"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$VideoOptionsParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "parameterData"    # Lcom/amazon/device/ads/AAXParameter$ParameterData;

    .prologue
    .line 648
    const/4 v3, 0x0

    .line 650
    .local v3, "value":Lorg/json/JSONObject;
    new-instance v5, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;

    invoke-direct {v5, p1}, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;-><init>(Lcom/amazon/device/ads/AAXParameter$ParameterData;)V

    invoke-virtual {v5}, Lcom/amazon/device/ads/AAXParameter$VideoAdsEnabledChecker;->isVideoAdsEnabled()Z

    move-result v4

    .line 651
    .local v4, "videoAdsEnabled":Z
    if-eqz v4, :cond_2

    .line 653
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "value":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 655
    .restart local v3    # "value":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 656
    .local v1, "minVideoAdDuration":I
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "minVideoAdDuration"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 658
    new-instance v5, Lcom/amazon/device/ads/Parsers$IntegerParser;

    invoke-direct {v5}, Lcom/amazon/device/ads/Parsers$IntegerParser;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setDefaultValue(I)Lcom/amazon/device/ads/Parsers$IntegerParser;

    move-result-object v5

    invoke-static {}, Lcom/amazon/device/ads/AAXParameter;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setParseErrorLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;

    move-result-object v5

    const-string v6, "The minVideoAdDuration advanced option could not be parsed properly."

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setParseErrorLogMessage(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;

    move-result-object v2

    .line 662
    .local v2, "parseInt":Lcom/amazon/device/ads/Parsers$IntegerParser;
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "minVideoAdDuration"

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/amazon/device/ads/Parsers$IntegerParser;->parse(Ljava/lang/String;)I

    move-result v1

    .line 664
    .end local v2    # "parseInt":Lcom/amazon/device/ads/Parsers$IntegerParser;
    :cond_0
    const-string v5, "minAdDuration"

    invoke-static {v3, v5, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 666
    const/16 v0, 0x7530

    .line 667
    .local v0, "maxVideoAdDuration":I
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "maxVideoAdDuration"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 669
    new-instance v5, Lcom/amazon/device/ads/Parsers$IntegerParser;

    invoke-direct {v5}, Lcom/amazon/device/ads/Parsers$IntegerParser;-><init>()V

    const/16 v6, 0x7530

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setDefaultValue(I)Lcom/amazon/device/ads/Parsers$IntegerParser;

    move-result-object v5

    invoke-static {}, Lcom/amazon/device/ads/AAXParameter;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setParseErrorLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;

    move-result-object v5

    const-string v6, "The maxVideoAdDuration advanced option could not be parsed properly."

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/Parsers$IntegerParser;->setParseErrorLogMessage(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;

    move-result-object v2

    .line 673
    .restart local v2    # "parseInt":Lcom/amazon/device/ads/Parsers$IntegerParser;
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "maxVideoAdDuration"

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/amazon/device/ads/Parsers$IntegerParser;->parse(Ljava/lang/String;)I

    move-result v0

    .line 675
    .end local v2    # "parseInt":Lcom/amazon/device/ads/Parsers$IntegerParser;
    :cond_1
    const-string v5, "maxAdDuration"

    invoke-static {v3, v5, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 677
    .end local v0    # "maxVideoAdDuration":I
    .end local v1    # "minVideoAdDuration":I
    :cond_2
    return-object v3
.end method
