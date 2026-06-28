.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandAd(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    iput-object p3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$700(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V

    .line 1085
    return-void
.end method
