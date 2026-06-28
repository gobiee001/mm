.class Lcom/amazon/device/ads/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/amazon/device/ads/Size;->width:I

    .line 26
    iput p2, p0, Lcom/amazon/device/ads/Size;->height:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "screenSize"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v2, 0x0

    .line 36
    .local v2, "width":I
    const/4 v1, 0x0

    .line 38
    .local v1, "height":I
    if-eqz p1, :cond_0

    .line 40
    const-string v3, "x"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "dimensions":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 45
    aget-object v3, v0, v5

    invoke-static {v3, v5}, Lcom/amazon/device/ads/Size;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 46
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3, v5}, Lcom/amazon/device/ads/Size;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 49
    .end local v0    # "dimensions":[Ljava/lang/String;
    :cond_0
    iput v2, p0, Lcom/amazon/device/ads/Size;->width:I

    .line 50
    iput v1, p0, Lcom/amazon/device/ads/Size;->height:I

    .line 51
    return-void
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 108
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 112
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 110
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 112
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/amazon/device/ads/Size;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/amazon/device/ads/Size;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/amazon/device/ads/Size;->height:I

    .line 87
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/amazon/device/ads/Size;->width:I

    .line 69
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 119
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "width"

    iget v2, p0, Lcom/amazon/device/ads/Size;->width:I

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 120
    const-string v1, "height"

    iget v2, p0, Lcom/amazon/device/ads/Size;->height:I

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 121
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/amazon/device/ads/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/device/ads/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
