.class Lcom/amazon/device/ads/ExtendedAdListenerExecutor$1;
.super Ljava/lang/Object;
.source "ExtendedAdListenerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/ExtendedAdListenerExecutor;->onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ExtendedAdListenerExecutor;

.field final synthetic val$ad:Lcom/amazon/device/ads/Ad;

.field final synthetic val$positionOnScreen:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/ExtendedAdListenerExecutor;Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$1;->this$0:Lcom/amazon/device/ads/ExtendedAdListenerExecutor;

    iput-object p2, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$1;->val$ad:Lcom/amazon/device/ads/Ad;

    iput-object p3, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$1;->val$positionOnScreen:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$1;->this$0:Lcom/amazon/device/ads/ExtendedAdListenerExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ExtendedAdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/ExtendedAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$1;->val$ad:Lcom/amazon/device/ads/Ad;

    iget-object v2, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$1;->val$positionOnScreen:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2}, Lcom/amazon/device/ads/ExtendedAdListener;->onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V

    .line 46
    return-void
.end method
