.class Lcom/amazon/device/ads/Position;
.super Ljava/lang/Object;
.source "Position.java"


# instance fields
.field private size:Lcom/amazon/device/ads/Size;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/amazon/device/ads/Size;

    invoke-direct {v0, v1, v1}, Lcom/amazon/device/ads/Size;-><init>(II)V

    iput-object v0, p0, Lcom/amazon/device/ads/Position;->size:Lcom/amazon/device/ads/Size;

    .line 23
    iput v1, p0, Lcom/amazon/device/ads/Position;->x:I

    .line 24
    iput v1, p0, Lcom/amazon/device/ads/Position;->y:I

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/Size;II)V
    .locals 0
    .param p1, "size"    # Lcom/amazon/device/ads/Size;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/device/ads/Position;->size:Lcom/amazon/device/ads/Size;

    .line 30
    iput p2, p0, Lcom/amazon/device/ads/Position;->x:I

    .line 31
    iput p3, p0, Lcom/amazon/device/ads/Position;->y:I

    .line 32
    return-void
.end method


# virtual methods
.method public getSize()Lcom/amazon/device/ads/Size;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/ads/Position;->size:Lcom/amazon/device/ads/Size;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/amazon/device/ads/Position;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/amazon/device/ads/Position;->y:I

    return v0
.end method

.method public setSize(Lcom/amazon/device/ads/Size;)V
    .locals 0
    .param p1, "size"    # Lcom/amazon/device/ads/Size;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/amazon/device/ads/Position;->size:Lcom/amazon/device/ads/Size;

    .line 42
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/amazon/device/ads/Position;->x:I

    .line 52
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/amazon/device/ads/Position;->y:I

    .line 62
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/amazon/device/ads/Position;->size:Lcom/amazon/device/ads/Size;

    invoke-virtual {v1}, Lcom/amazon/device/ads/Size;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 67
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "x"

    iget v2, p0, Lcom/amazon/device/ads/Position;->x:I

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 68
    const-string v1, "y"

    iget v2, p0, Lcom/amazon/device/ads/Position;->y:I

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 69
    return-object v0
.end method
