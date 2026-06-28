.class Lcom/amazon/device/ads/ExpandProperties;
.super Ljava/lang/Object;
.source "ExpandProperties.java"


# instance fields
.field private height:I

.field private isModal:Ljava/lang/Boolean;

.field private useCustomClose:Ljava/lang/Boolean;

.field private width:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Ljava/lang/Boolean;

    .line 24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->isModal:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    return v0
.end method

.method public getIsModal()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->isModal:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUseCustomClose()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    .line 40
    return-void
.end method

.method public setIsModal(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isModal"    # Ljava/lang/Boolean;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amazon/device/ads/ExpandProperties;->isModal:Ljava/lang/Boolean;

    .line 56
    return-void
.end method

.method public setUseCustomClose(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "useCustomClose"    # Ljava/lang/Boolean;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Ljava/lang/Boolean;

    .line 48
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    .line 32
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "width"

    iget v2, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 65
    const-string v1, "height"

    iget v2, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 66
    const-string v1, "useCustomClose"

    iget-object v2, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 67
    const-string v1, "isModal"

    iget-object v2, p0, Lcom/amazon/device/ads/ExpandProperties;->isModal:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 68
    return-object v0
.end method
