.class Lcom/amazon/device/ads/ResizeProperties;
.super Ljava/lang/Object;
.source "ResizeProperties.java"


# instance fields
.field private final allowOffscreenDefault:Ljava/lang/Boolean;

.field private final customClosePositionDefault:Ljava/lang/String;

.field private final json:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    .line 19
    const-string v0, "top-right"

    iput-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->customClosePositionDefault:Ljava/lang/String;

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->allowOffscreenDefault:Ljava/lang/Boolean;

    .line 27
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "customClosePosition"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "top-right"

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "allowOffscreen"

    iget-object v2, p0, Lcom/amazon/device/ads/ResizeProperties;->allowOffscreenDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public getAllowOffscreen()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "allowOffscreen"

    iget-object v2, p0, Lcom/amazon/device/ads/ResizeProperties;->allowOffscreenDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getCustomClosePosition()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "customClosePosition"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "top-right"

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "height"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOffsetX()I
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "offsetX"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOffsetY()I
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "offsetY"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setAllowOffscreen(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "allowOffscreen"    # Ljava/lang/Boolean;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "allowOffscreen"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public setCustomClosePosition(Ljava/lang/String;)V
    .locals 2
    .param p1, "customClosePosition"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "customClosePosition"

    invoke-static {v0, v1, p1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-static {v0, v1, p1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public setOffsetX(I)V
    .locals 2
    .param p1, "offsetX"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "offsetX"

    invoke-static {v0, v1, p1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public setOffsetY(I)V
    .locals 2
    .param p1, "offsetY"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "offsetY"

    invoke-static {v0, v1, p1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-static {v0, v1, p1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/ResizeProperties;->json:Lorg/json/JSONObject;

    return-object v0
.end method
