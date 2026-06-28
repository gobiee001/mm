.class Lcom/amazon/device/ads/ExtendedAdListenerExecutor$2;
.super Ljava/lang/Object;
.source "ExtendedAdListenerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/ExtendedAdListenerExecutor;->onAdExpired(Lcom/amazon/device/ads/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ExtendedAdListenerExecutor;

.field final synthetic val$ad:Lcom/amazon/device/ads/Ad;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/ExtendedAdListenerExecutor;Lcom/amazon/device/ads/Ad;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$2;->this$0:Lcom/amazon/device/ads/ExtendedAdListenerExecutor;

    iput-object p2, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$2;->val$ad:Lcom/amazon/device/ads/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$2;->this$0:Lcom/amazon/device/ads/ExtendedAdListenerExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ExtendedAdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/ExtendedAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/ExtendedAdListenerExecutor$2;->val$ad:Lcom/amazon/device/ads/Ad;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/ExtendedAdListener;->onAdExpired(Lcom/amazon/device/ads/Ad;)V

    .line 60
    return-void
.end method
