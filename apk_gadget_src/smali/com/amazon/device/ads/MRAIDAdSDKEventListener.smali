.class Lcom/amazon/device/ads/MRAIDAdSDKEventListener;
.super Ljava/lang/Object;
.source "MRAIDAdSDKEventListener.java"

# interfaces
.implements Lcom/amazon/device/ads/SDKEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/MRAIDAdSDKEventListener$1;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 2
    .param p1, "adBridge"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 31
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 32
    return-void
.end method

.method private handleBridgeAddedEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 3
    .param p1, "sdkEvent"    # Lcom/amazon/device/ads/SDKEvent;
    .param p2, "adControlAccessor"    # Lcom/amazon/device/ads/AdControlAccessor;

    .prologue
    .line 74
    const-string v1, "bridgeName"

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/SDKEvent;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "bridgeName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$1;->$SwitchMap$com$amazon$device$ads$AdState:[I

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleReadyEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    .line 82
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleVisibleEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 85
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleReadyEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleClosedEvent(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 3
    .param p1, "adControlAccessor"    # Lcom/amazon/device/ads/AdControlAccessor;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->collapseExpandedAd(Lcom/amazon/device/ads/AdControlAccessor;)V

    .line 122
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 123
    .local v0, "currentOrientation":I
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getOriginalOrientation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getOriginalOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 142
    .end local v0    # "currentOrientation":I
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 134
    .restart local v0    # "currentOrientation":I
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getOriginalOrientation()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 136
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getOriginalOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 139
    :cond_2
    const-string v1, "mraidBridge.stateChange(\'hidden\');"

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 140
    const-string v1, "mraidBridge.viewableChange(\'false\');"

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleReadyEvent(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 1
    .param p1, "adControlAccessor"    # Lcom/amazon/device/ads/AdControlAccessor;

    .prologue
    .line 96
    const-string v0, "mraidBridge.ready();"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private handleVisibleEvent(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 7
    .param p1, "adControlAccessor"    # Lcom/amazon/device/ads/AdControlAccessor;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/amazon/device/ads/AdControlAccessor;->setOriginalOrientation(Landroid/app/Activity;)V

    .line 104
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getMaxSize()Lcom/amazon/device/ads/Size;

    move-result-object v1

    .line 106
    .local v1, "size":Lcom/amazon/device/ads/Size;
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v1}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->updateExpandProperties(II)V

    .line 108
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v0

    .line 109
    .local v0, "currentPosition":Lcom/amazon/device/ads/Position;
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getX()I

    move-result v5

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getY()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->updateDefaultPosition(IIII)V

    .line 110
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationPropertyChange()V

    .line 113
    const-string v2, "mraidBridge.stateChange(\'default\');"

    invoke-virtual {p1, v2}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 114
    const-string v2, "mraidBridge.viewableChange(\'true\');"

    invoke-virtual {p1, v2}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onSDKEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 2
    .param p1, "sdkEvent"    # Lcom/amazon/device/ads/SDKEvent;
    .param p2, "adControlAccessor"    # Lcom/amazon/device/ads/AdControlAccessor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$1;->$SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType:[I

    invoke-virtual {p1}, Lcom/amazon/device/ads/SDKEvent;->getEventType()Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 45
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleReadyEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleVisibleEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 51
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleClosedEvent(Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->mraidAdSDKBridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    goto :goto_0

    .line 61
    :pswitch_4
    const-string v0, "mraidBridge.stateChange(\'hidden\');"

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 62
    const-string v0, "mraidBridge.viewableChange(\'false\');"

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleBridgeAddedEvent(Lcom/amazon/device/ads/SDKEvent;Lcom/amazon/device/ads/AdControlAccessor;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
