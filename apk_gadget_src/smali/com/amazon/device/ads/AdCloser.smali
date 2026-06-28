.class Lcom/amazon/device/ads/AdCloser;
.super Ljava/lang/Object;
.source "AdCloser.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adController:Lcom/amazon/device/ads/AdController;

.field private final isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/amazon/device/ads/AdCloser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdCloser;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 1
    .param p1, "adController"    # Lcom/amazon/device/ads/AdController;

    .prologue
    .line 22
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdCloser;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 23
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 2
    .param p1, "adController"    # Lcom/amazon/device/ads/AdController;
    .param p2, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdCloser;->isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-object p1, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    .line 27
    sget-object v0, Lcom/amazon/device/ads/AdCloser;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdCloser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 28
    return-void
.end method


# virtual methods
.method public closeAd()Z
    .locals 6

    .prologue
    .line 35
    iget-object v3, p0, Lcom/amazon/device/ads/AdCloser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "Ad is attempting to close."

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, "isClosed":Z
    iget-object v3, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v3

    sget-object v4, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 40
    iget-object v3, p0, Lcom/amazon/device/ads/AdCloser;->isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, "shouldClearAdActivity":Z
    const/4 v0, 0x0

    .line 44
    .local v0, "fireCloseEvent":Z
    iget-object v3, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->getAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/device/ads/AdControlCallback;->adClosing()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 57
    :goto_0
    if-eqz v0, :cond_0

    .line 59
    iget-object v3, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    new-instance v4, Lcom/amazon/device/ads/SDKEvent;

    sget-object v5, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->CLOSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-direct {v4, v5}, Lcom/amazon/device/ads/SDKEvent;-><init>(Lcom/amazon/device/ads/SDKEvent$SDKEventType;)V

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/AdController;->fireSDKEvent(Lcom/amazon/device/ads/SDKEvent;)V

    .line 60
    const/4 v1, 0x1

    .line 64
    :cond_0
    if-eqz v2, :cond_1

    .line 66
    iget-object v3, p0, Lcom/amazon/device/ads/AdCloser;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->resetToReady()V

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/amazon/device/ads/AdCloser;->isClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    .end local v0    # "fireCloseEvent":Z
    .end local v2    # "shouldClearAdActivity":Z
    :cond_2
    return v1

    .line 47
    .restart local v0    # "fireCloseEvent":Z
    .restart local v2    # "shouldClearAdActivity":Z
    :pswitch_0
    const/4 v2, 0x1

    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_0

    .line 51
    :pswitch_1
    const/4 v0, 0x1

    .line 52
    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
