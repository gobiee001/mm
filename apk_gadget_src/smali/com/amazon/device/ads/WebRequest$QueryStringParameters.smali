.class Lcom/amazon/device/ads/WebRequest$QueryStringParameters;
.super Ljava/lang/Object;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/WebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryStringParameters"
.end annotation


# instance fields
.field private final params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rawAppendage:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->params:Ljava/util/HashMap;

    .line 1028
    return-void
.end method


# virtual methods
.method append(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1113
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->rawAppendage:Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    const/4 v0, 0x1

    .line 1121
    .local v0, "first":Z
    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->params:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1123
    .local v2, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 1125
    const/4 v0, 0x0

    .line 1131
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1129
    :cond_2
    const-string v3, "&"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1136
    .end local v2    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->rawAppendage:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->rawAppendage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1140
    const-string v3, "&"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    :cond_4
    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->rawAppendage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1063
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name must not be null or empty string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method putUnencoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1105
    new-instance v1, Lcom/amazon/device/ads/WebUtils2;

    invoke-direct {v1}, Lcom/amazon/device/ads/WebUtils2;-><init>()V

    .line 1106
    .local v1, "webUtils":Lcom/amazon/device/ads/WebUtils2;
    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/WebUtils2;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, "encodedName":Ljava/lang/String;
    invoke-virtual {v1, p2}, Lcom/amazon/device/ads/WebUtils2;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    return-object v0
.end method

.method putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1080
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name must not be null or empty string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :cond_0
    if-nez p2, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    :goto_0
    return-void

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method putUrlEncoded(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1042
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method putUrlEncodedIfNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1046
    invoke-static {p2}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncodedIfTrue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1047
    return-void

    .line 1046
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method putUrlEncodedIfTrue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "check"    # Z

    .prologue
    .line 1050
    if-eqz p3, :cond_0

    .line 1052
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :cond_0
    return-void
.end method

.method setRawAppendage(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawAppendage"    # Ljava/lang/String;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->rawAppendage:Ljava/lang/String;

    .line 1038
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->params:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
