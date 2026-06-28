.class Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestFactory;
.super Ljava/lang/Object;
.source "SISRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/SISRegisterEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SISRequestFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeviceRequest(Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;)Lcom/amazon/device/ads/SISDeviceRequest;
    .locals 3
    .param p1, "requestType"    # Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;

    .prologue
    .line 307
    sget-object v0, Lcom/amazon/device/ads/SISRegisterEventRequest$1;->$SwitchMap$com$amazon$device$ads$SISRegisterEventRequest$SISRequestType:[I

    invoke-virtual {p1}, Lcom/amazon/device/ads/SISRegisterEventRequest$SISRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SISRequestType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a SISDeviceRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :pswitch_0
    new-instance v0, Lcom/amazon/device/ads/SISGenerateDIDRequest;

    invoke-direct {v0}, Lcom/amazon/device/ads/SISGenerateDIDRequest;-><init>()V

    .line 310
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;

    invoke-direct {v0}, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;-><init>()V

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createRegisterEventRequest(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Lorg/json/JSONArray;)Lcom/amazon/device/ads/SISRegisterEventRequest;
    .locals 1
    .param p1, "advertisingIdentifierInfo"    # Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .param p2, "appEvents"    # Lorg/json/JSONArray;

    .prologue
    .line 319
    new-instance v0, Lcom/amazon/device/ads/SISRegisterEventRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazon/device/ads/SISRegisterEventRequest;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Lorg/json/JSONArray;)V

    return-object v0
.end method
