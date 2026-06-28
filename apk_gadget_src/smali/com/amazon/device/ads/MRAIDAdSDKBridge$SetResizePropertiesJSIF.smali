.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetResizePropertiesJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "SetResizeProperties"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1
    .param p1, "bridge"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .prologue
    .line 1619
    const-string v0, "SetResizeProperties"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1620
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1621
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "parameters"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1626
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    const-string v1, "width"

    invoke-static {p1, v1, v7}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "height"

    invoke-static {p1, v2, v7}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "offsetX"

    invoke-static {p1, v3, v7}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "offsetY"

    invoke-static {p1, v4, v7}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "customClosePosition"

    invoke-static {p1, v5, v8}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "allowOffscreen"

    invoke-static {p1, v6, v7}, Lcom/amazon/device/ads/JSONUtils;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->setResizeProperties(IIIILjava/lang/String;Z)V

    .line 1633
    return-object v8
.end method
