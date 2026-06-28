.class Lcom/amazon/device/ads/AdUserAgentManager;
.super Lcom/amazon/device/ads/BasicUserAgentManager;
.source "AdUserAgentManager.java"


# instance fields
.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdUserAgentManager;-><init>(Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;)V
    .locals 0
    .param p1, "threadRunner"    # Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/amazon/device/ads/BasicUserAgentManager;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/device/ads/AdUserAgentManager;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 30
    return-void
.end method


# virtual methods
.method buildAndSetUserAgentString(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/device/ads/AdUserAgentManager;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/AdUserAgentManager$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/AdUserAgentManager$1;-><init>(Lcom/amazon/device/ads/AdUserAgentManager;Landroid/content/Context;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 47
    return-void
.end method
