.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetExpandPropertiesJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "GetExpandProperties"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1
    .param p1, "bridge"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .prologue
    .line 1564
    const-string v0, "GetExpandProperties"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1565
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1566
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "parameters"    # Lorg/json/JSONObject;

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getExpandProperties()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
