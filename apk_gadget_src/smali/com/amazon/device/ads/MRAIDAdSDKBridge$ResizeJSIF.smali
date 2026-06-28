.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResizeJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "Resize"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1
    .param p1, "bridge"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .prologue
    .line 1697
    const-string v0, "Resize"

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1698
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1699
    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "parameters"    # Lorg/json/JSONObject;

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resize()V

    .line 1705
    const/4 v0, 0x0

    return-object v0
.end method
