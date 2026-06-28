.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetExpandPropertiesJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "SetExpandProperties"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1
    .param p1, "bridge"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .prologue
    .line 1581
    const-string v0, "SetExpandProperties"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1582
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1583
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "parameters"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 1588
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    const-string v1, "width"

    invoke-static {p1, v1, v4}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "height"

    invoke-static {p1, v2, v4}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "useCustomClose"

    invoke-static {p1, v3, v4}, Lcom/amazon/device/ads/JSONUtils;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->setExpandProperties(IIZ)V

    .line 1592
    const/4 v0, 0x0

    return-object v0
.end method
