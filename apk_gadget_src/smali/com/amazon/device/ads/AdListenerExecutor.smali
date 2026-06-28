.class Lcom/amazon/device/ads/AdListenerExecutor;
.super Ljava/lang/Object;
.source "AdListenerExecutor.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adListener:Lcom/amazon/device/ads/AdListener;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdListenerExecutor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1
    .param p1, "adListener"    # Lcom/amazon/device/ads/AdListener;
    .param p2, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .prologue
    .line 28
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/device/ads/AdListenerExecutor;-><init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 29
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1
    .param p1, "adListener"    # Lcom/amazon/device/ads/AdListener;
    .param p2, "threadRunner"    # Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .param p3, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->adListener:Lcom/amazon/device/ads/AdListener;

    .line 33
    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutor;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 34
    sget-object v0, Lcom/amazon/device/ads/AdListenerExecutor;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 35
    return-void
.end method


# virtual methods
.method protected execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 135
    return-void
.end method

.method protected getAdListener()Lcom/amazon/device/ads/AdListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->adListener:Lcom/amazon/device/ads/AdListener;

    return-object v0
.end method

.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 1
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 82
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutor$4;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;)V

    .line 90
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 1
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 95
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutor$5;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;)V

    .line 103
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public onAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 3
    .param p1, "adEvent"    # Lcom/amazon/device/ads/AdEvent;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad listener called - Ad Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 1
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 69
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutor$3;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;)V

    .line 77
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public onAdExpired(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad listener called - Ad Expired."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 1
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "adError"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 56
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor$2;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V

    .line 64
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 1
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "adProperties"    # Lcom/amazon/device/ads/AdProperties;

    .prologue
    .line 44
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor$1;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V

    .line 52
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public onAdReceived(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdData;)Lcom/amazon/device/ads/ActionCode;
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "adData"    # Lcom/amazon/device/ads/AdData;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad listener called - Ad Received."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "positionOnScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad listener called - Ad Resized."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onSpecialUrlClicked(Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad listener called - Special Url Clicked."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 119
    return-void
.end method
