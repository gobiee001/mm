.class public Lcom/amazon/device/ads/AdLayout;
.super Landroid/widget/FrameLayout;
.source "AdLayout.java"

# interfaces
.implements Lcom/amazon/device/ads/Ad;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdLayout$4;,
        Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;,
        Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil;
    }
.end annotation


# static fields
.field private static final CONTENT_DESCRIPTION_AD_LAYOUT:Ljava/lang/String; = "adLayoutObject"

.field public static final DEFAULT_TIMEOUT:I = 0x4e20

.field static final LAYOUT_NOT_RUN_ERR_MSG:Ljava/lang/String; = "Can\'t load an ad because the view size cannot be determined."

.field static final LAYOUT_PARAMS_NULL_ERR_MSG:Ljava/lang/String; = "Can\'t load an ad because layout parameters are blank. Use setLayoutParams() to specify dimensions for this AdLayout."

.field static final LOADING_IN_PROGRESS_LOG_MSG:Ljava/lang/String; = "Can\'t load an ad because ad loading is already in progress"

.field private static final LOGTAG:Ljava/lang/String;

.field private static threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private activityRootView:Landroid/view/View;

.field private adController:Lcom/amazon/device/ads/AdController;

.field private final adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

.field private adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

.field private final adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

.field private final adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

.field private final adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

.field private final adSize:Lcom/amazon/device/ads/AdSize;

.field private adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

.field private attached:Z

.field private final context:Landroid/content/Context;

.field private currentDestroyable:Lcom/amazon/device/ads/Destroyable;

.field private currentView:Landroid/view/View;

.field private hasRegisterBroadcastReciever:Z

.field private isDestroyed:Z

.field private isInForeground:Z

.field private isInitialized:Z

.field private isParentViewMissingAtLoadTime:Z

.field private lastVisibility:I

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

.field private needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private screenStateReceiver:Landroid/content/BroadcastReceiver;

.field private shouldDisableWebViewHardwareAcceleration:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 64
    const-class v3, Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    .line 120
    const/4 v2, 0x1

    .line 121
    .local v2, "numberThreads":I
    const-wide/16 v0, 0x3c

    .line 123
    .local v0, "keepAliveTimeSeconds":J
    new-instance v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v3, Lcom/amazon/device/ads/AdLayout;->threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 124
    sget-object v3, Lcom/amazon/device/ads/AdLayout;->threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 134
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSize"    # Lcom/amazon/device/ads/AdSize;

    .prologue
    .line 144
    new-instance v3, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v4, Lcom/amazon/device/ads/AdControllerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/AdControllerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v5

    new-instance v6, Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {v6}, Lcom/amazon/device/ads/AdLoadStarter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 145
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSize"    # Lcom/amazon/device/ads/AdSize;
    .param p3, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p4, "adControllerFactory"    # Lcom/amazon/device/ads/AdControllerFactory;
    .param p5, "adRegistration"    # Lcom/amazon/device/ads/AdRegistrationExecutor;
    .param p6, "adLoadStarter"    # Lcom/amazon/device/ads/AdLoadStarter;

    .prologue
    .line 153
    new-instance v4, Lcom/amazon/device/ads/AdListenerExecutorFactory;

    invoke-direct {v4, p3}, Lcom/amazon/device/ads/AdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 154
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adSize"    # Lcom/amazon/device/ads/AdSize;
    .param p3, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p4, "adListenerExecutorFactory"    # Lcom/amazon/device/ads/AdListenerExecutorFactory;
    .param p5, "adControllerFactory"    # Lcom/amazon/device/ads/AdControllerFactory;
    .param p6, "adRegistration"    # Lcom/amazon/device/ads/AdRegistrationExecutor;
    .param p7, "adLoadStarter"    # Lcom/amazon/device/ads/AdLoadStarter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 79
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 80
    const/16 v0, 0x8

    iput v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 84
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 86
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 88
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 90
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 164
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 166
    iput-object p3, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 167
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    sget-object v1, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 168
    iput-object p4, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    .line 169
    iput-object p5, p0, Lcom/amazon/device/ads/AdLayout;->adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

    .line 170
    iput-object p6, p0, Lcom/amazon/device/ads/AdLayout;->adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 171
    iput-object p7, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 189
    new-instance v3, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v4, Lcom/amazon/device/ads/AdControllerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/AdControllerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v5

    new-instance v6, Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {v6}, Lcom/amazon/device/ads/AdLoadStarter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 229
    new-instance v4, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/AdControllerFactory;

    invoke-direct {v5}, Lcom/amazon/device/ads/AdControllerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {v7}, Lcom/amazon/device/ads/AdLoadStarter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 230
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p5, "adControllerFactory"    # Lcom/amazon/device/ads/AdControllerFactory;
    .param p6, "adRegistration"    # Lcom/amazon/device/ads/AdRegistrationExecutor;
    .param p7, "adLoadStarter"    # Lcom/amazon/device/ads/AdLoadStarter;

    .prologue
    .line 239
    new-instance v5, Lcom/amazon/device/ads/AdListenerExecutorFactory;

    invoke-direct {v5, p4}, Lcom/amazon/device/ads/AdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 240
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p5, "adListenerExecutorFactory"    # Lcom/amazon/device/ads/AdListenerExecutorFactory;
    .param p6, "adControllerFactory"    # Lcom/amazon/device/ads/AdControllerFactory;
    .param p7, "adRegistration"    # Lcom/amazon/device/ads/AdRegistrationExecutor;
    .param p8, "adLoadStarter"    # Lcom/amazon/device/ads/AdLoadStarter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 250
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 79
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 80
    const/16 v0, 0x8

    iput v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 84
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 86
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 88
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 90
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 252
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    .line 253
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/AdLayout;->determineAdSize(Landroid/util/AttributeSet;)Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 254
    iput-object p4, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 255
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    sget-object v1, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 256
    iput-object p5, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    .line 257
    iput-object p6, p0, Lcom/amazon/device/ads/AdLayout;->adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

    .line 258
    iput-object p7, p0, Lcom/amazon/device/ads/AdLayout;->adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 259
    iput-object p8, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    .line 260
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p4, "adControllerFactory"    # Lcom/amazon/device/ads/AdControllerFactory;
    .param p5, "adRegistration"    # Lcom/amazon/device/ads/AdRegistrationExecutor;
    .param p6, "adLoadStarter"    # Lcom/amazon/device/ads/AdLoadStarter;

    .prologue
    .line 198
    new-instance v4, Lcom/amazon/device/ads/AdListenerExecutorFactory;

    invoke-direct {v4, p3}, Lcom/amazon/device/ads/AdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    .line 199
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p4, "adListenerExecutorFactory"    # Lcom/amazon/device/ads/AdListenerExecutorFactory;
    .param p5, "adControllerFactory"    # Lcom/amazon/device/ads/AdControllerFactory;
    .param p6, "adRegistration"    # Lcom/amazon/device/ads/AdRegistrationExecutor;
    .param p7, "adLoadStarter"    # Lcom/amazon/device/ads/AdLoadStarter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 79
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 80
    const/16 v0, 0x8

    iput v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 84
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 86
    iput-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 88
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 90
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 210
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    .line 211
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/AdLayout;->determineAdSize(Landroid/util/AttributeSet;)Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 212
    iput-object p3, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 213
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    sget-object v1, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 214
    iput-object p4, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    .line 215
    iput-object p5, p0, Lcom/amazon/device/ads/AdLayout;->adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

    .line 216
    iput-object p6, p0, Lcom/amazon/device/ads/AdLayout;->adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 217
    iput-object p7, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AdLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLayout;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    return v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLayout;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLayout;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->startAdLoadUponLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AdLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLayout;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/AdLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLayout;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amazon/device/ads/AdLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->currentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/Destroyable;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLayout;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentDestroyable:Lcom/amazon/device/ads/Destroyable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/Destroyable;)Lcom/amazon/device/ads/Destroyable;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLayout;
    .param p1, "x1"    # Lcom/amazon/device/ads/Destroyable;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->currentDestroyable:Lcom/amazon/device/ads/Destroyable;

    return-object p1
.end method

.method static synthetic access$602(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/AdController;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/AdLayout;
    .param p1, "x1"    # Lcom/amazon/device/ads/AdController;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    return-object p1
.end method

.method private collapseAd()V
    .locals 2

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Lcom/amazon/device/ads/AdLayout$2;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$2;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 555
    :cond_0
    return-void
.end method

.method private createAdController(Lcom/amazon/device/ads/AdSize;Landroid/content/Context;)Lcom/amazon/device/ads/AdController;
    .locals 1
    .param p1, "size"    # Lcom/amazon/device/ads/AdSize;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/device/ads/AdControllerFactory;->buildAdController(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    return-object v0
.end method

.method private determineAdSize(Landroid/util/AttributeSet;)Lcom/amazon/device/ads/AdSize;
    .locals 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v10, 0x0

    .line 264
    const-string v1, "adSize"

    .line 265
    .local v1, "adSizeAttributeName":Ljava/lang/String;
    const-string v3, "http://schemas.android.com/apk/lib/com.amazon.device.ads"

    .line 267
    .local v3, "adsXmlNamespace":Ljava/lang/String;
    const-string v6, "http://schemas.android.com/apk/lib/com.amazon.device.ads"

    const-string v7, "adSize"

    invoke-static {p1, v6, v7}, Lcom/amazon/device/ads/AdLayout;->getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "adSizeAttributeValue":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://schemas.android.com/apk/res/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "oldAdsXmlNamespace":Ljava/lang/String;
    const-string v6, "adSize"

    invoke-static {p1, v5, v6}, Lcom/amazon/device/ads/AdLayout;->getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    if-eqz v2, :cond_0

    .line 275
    iget-object v6, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    sget-object v7, Lcom/amazon/device/ads/MobileAdsLogger$Level;->WARN:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    const-string v8, "DEPRECATED - Please use the XML namespace \"http://schemas.android.com/apk/lib/com.amazon.device.ads\" for specifying AdLayout properties."

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9}, Lcom/amazon/device/ads/MobileAdsLogger;->forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "custom"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 278
    const-string v4, "Using \"custom\" or \"CUSTOM\" for the \"adSize\" property is no longer supported. Please specifiy a size or remove the property to use Auto Ad Size."

    .line 279
    .local v4, "msg":Ljava/lang/String;
    iget-object v6, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    sget-object v7, Lcom/amazon/device/ads/MobileAdsLogger$Level;->ERROR:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v4, v8}, Lcom/amazon/device/ads/MobileAdsLogger;->forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 285
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "oldAdsXmlNamespace":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lcom/amazon/device/ads/AdLayout;->parseAdSize(Ljava/lang/String;)Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    .line 286
    .local v0, "adSize":Lcom/amazon/device/ads/AdSize;
    return-object v0
.end method

.method private getAdController()Lcom/amazon/device/ads/AdController;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->initializeIfNecessary()V

    .line 395
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-nez v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->initializeAdController()V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    return-object v0
.end method

.method private static getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-interface {p0, p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeAdController()V
    .locals 3

    .prologue
    .line 370
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-nez v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    if-nez v1, :cond_1

    .line 375
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    .line 381
    .local v0, "size":Lcom/amazon/device/ads/AdSize;
    :goto_0
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AdLayout;->createAdController(Lcom/amazon/device/ads/AdSize;Landroid/content/Context;)Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/device/ads/AdLayout;->setAdController(Lcom/amazon/device/ads/AdController;)V

    .line 382
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    iget-boolean v2, p0, Lcom/amazon/device/ads/AdLayout;->shouldDisableWebViewHardwareAcceleration:Z

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdController;->requestDisableHardwareAcceleration(Z)V

    .line 384
    .end local v0    # "size":Lcom/amazon/device/ads/AdSize;
    :cond_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .restart local v0    # "size":Lcom/amazon/device/ads/AdSize;
    goto :goto_0
.end method

.method private isReadyToLoad()Z
    .locals 2

    .prologue
    .line 709
    sget-object v0, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAdWhenParentViewMissing()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 774
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_0

    .line 776
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_NULL_LAYOUT_PARAMS:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 777
    const-string v2, "Can\'t load an ad because layout parameters are blank. Use setLayoutParams() to specify dimensions for this AdLayout."

    invoke-direct {p0, v2}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    .line 814
    :goto_0
    return v1

    .line 784
    :cond_0
    const/16 v3, 0xb

    invoke-static {v3}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 786
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setActivityRootView()V

    .line 787
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isActivityRootViewNull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 790
    const-string v0, "Ad load failed because root view could not be obtained from the activity."

    .line 791
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    goto :goto_0

    .line 797
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isActivityRootViewLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 799
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Activity root view layout is requested."

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->deferAdLoadToLayoutEvent()V

    .line 801
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setOnLayoutChangeListenerForRoot()V

    goto :goto_0

    .line 806
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setFloatingWindowDimensions()V

    move v1, v2

    .line 807
    goto :goto_0

    .line 813
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setFloatingWindowDimensions()V

    move v1, v2

    .line 814
    goto :goto_0
.end method

.method private onRequestError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->onRequestError(Ljava/lang/String;)V

    .line 1017
    return-void
.end method

.method private static parseAdSize(Ljava/lang/String;)Lcom/amazon/device/ads/AdSize;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 409
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    .line 410
    .local v0, "adSize":Lcom/amazon/device/ads/AdSize;
    if-eqz p0, :cond_0

    .line 412
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 413
    const-string v4, "autonoscale"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO_NO_SCALE:Lcom/amazon/device/ads/AdSize;

    .line 432
    :cond_0
    :goto_0
    return-object v0

    .line 417
    :cond_1
    const-string v4, "auto"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 420
    const-string v4, "x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "sizes":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 422
    .local v3, "width":I
    const/4 v1, 0x0

    .line 423
    .local v1, "height":I
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 425
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4, v3}, Lcom/amazon/device/ads/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 426
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4, v1}, Lcom/amazon/device/ads/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 429
    :cond_2
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    .end local v0    # "adSize":Lcom/amazon/device/ads/AdSize;
    invoke-direct {v0, v3, v1}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    .restart local v0    # "adSize":Lcom/amazon/device/ads/AdSize;
    goto :goto_0
.end method

.method private registerScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 462
    iget-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    if-eqz v1, :cond_0

    .line 483
    :goto_0
    return-void

    .line 467
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 468
    new-instance v1, Lcom/amazon/device/ads/AdLayout$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AdLayout$1;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    iput-object v1, p0, Lcom/amazon/device/ads/AdLayout;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 480
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setAdController(Lcom/amazon/device/ads/AdController;)V
    .locals 2
    .param p1, "adController"    # Lcom/amazon/device/ads/AdController;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    .line 389
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->createAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->setCallback(Lcom/amazon/device/ads/AdControlCallback;)V

    .line 390
    return-void
.end method

.method private startAdLoadUponLayout()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 583
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 584
    .local v1, "options":Lcom/amazon/device/ads/AdTargetingOptions;
    new-instance v2, Lcom/amazon/device/ads/AdSlot;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/amazon/device/ads/AdSlot;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdTargetingOptions;)V

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/AdSlot;->setDeferredLoad(Z)Lcom/amazon/device/ads/AdSlot;

    move-result-object v0

    .line 585
    .local v0, "adSlot":Lcom/amazon/device/ads/AdSlot;
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->getTimeout()I

    move-result v3

    new-array v4, v4, [Lcom/amazon/device/ads/AdSlot;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Lcom/amazon/device/ads/AdLoadStarter;->loadAds(ILcom/amazon/device/ads/AdTargetingOptions;[Lcom/amazon/device/ads/AdSlot;)V

    .line 586
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAndResetIsPrepared()Z

    move-result v2

    if-nez v2, :cond_0

    .line 588
    const-string v2, "Could not load ad on layout."

    invoke-direct {p0, v2}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    .line 590
    :cond_0
    return-void
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .locals 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    if-eqz v0, :cond_0

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 489
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 491
    :cond_0
    return-void
.end method


# virtual methods
.method adFailed(Lcom/amazon/device/ads/AdError;)V
    .locals 1
    .param p1, "adError"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->adFailed(Lcom/amazon/device/ads/AdError;)V

    .line 821
    return-void
.end method

.method adShown()V
    .locals 1

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->adShown()V

    .line 834
    return-void
.end method

.method bypassAdRenderingProcess()V
    .locals 2

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->RENDERING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 828
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    const-string v1, "custom-render"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->adRendered(Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method createAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;
    .locals 1

    .prologue
    .line 442
    new-instance v0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    return-object v0
.end method

.method deferAdLoadToLayoutEvent()V
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->setNeedsToLoadAdOnLayout(Z)V

    .line 961
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->scheduleTaskForCheckingIfLayoutHasRun()V

    .line 962
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Destroying the AdLayout"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 1146
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->unregisterScreenStateBroadcastReceiver()V

    .line 1147
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->destroy()V

    goto :goto_0
.end method

.method failLoadIfLayoutHasNotRun()V
    .locals 2

    .prologue
    .line 979
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->getAndSetNeedsToLoadAdOnLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_LAYOUT_NOT_RUN:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 982
    const-string v0, "Can\'t load an ad because the view size cannot be determined."

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    .line 984
    :cond_0
    return-void
.end method

.method getActivityRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    return-object v0
.end method

.method getActivityRootViewDimension(Z)I
    .locals 1
    .param p1, "isWidth"    # Z

    .prologue
    .line 1084
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method getAdData()Lcom/amazon/device/ads/AdData;
    .locals 1

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v0

    return-object v0
.end method

.method getAdListenerExecutor()Lcom/amazon/device/ads/AdListenerExecutor;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    return-object v0
.end method

.method public getAdSize()Lcom/amazon/device/ads/AdSize;
    .locals 2

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    .line 633
    .local v0, "adController":Lcom/amazon/device/ads/AdController;
    if-nez v0, :cond_0

    .line 635
    const/4 v1, 0x0

    .line 637
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v1

    goto :goto_0
.end method

.method getAndResetIsPrepared()Z
    .locals 1

    .prologue
    .line 1011
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAndResetIsPrepared()Z

    move-result v0

    return v0
.end method

.method getAndSetNeedsToLoadAdOnLayout(Z)Z
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method getNeedsToLoadAdOnLayout()Z
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method getRawScreenDimension(Z)I
    .locals 4
    .param p1, "isWidth"    # Z

    .prologue
    .line 947
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 948
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 949
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 950
    if-eqz p1, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return v2

    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public getTimeout()I
    .locals 2

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    .line 600
    .local v0, "adController":Lcom/amazon/device/ads/AdController;
    if-nez v0, :cond_0

    .line 602
    const/4 v1, -0x1

    .line 604
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getTimeout()I

    move-result v1

    goto :goto_0
.end method

.method initializeIfNecessary()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 318
    .local v0, "initStart":J
    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Initializing AdLayout."

    invoke-virtual {v3, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout;->adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    iget-object v6, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/amazon/device/ads/AdRegistrationExecutor;->initializeAds(Landroid/content/Context;)V

    .line 321
    const-string v3, "adLayoutObject"

    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/AdLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 330
    .local v2, "textView":Landroid/widget/TextView;
    const-string v3, "AdLayout"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 333
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdLayout;->addView(Landroid/view/View;)V

    .line 334
    iput-boolean v4, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    goto :goto_0

    .line 338
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    .line 340
    invoke-virtual {p0, v5}, Lcom/amazon/device/ads/AdLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 341
    invoke-virtual {p0, v5}, Lcom/amazon/device/ads/AdLayout;->setVerticalScrollBarEnabled(Z)V

    .line 344
    iput-boolean v4, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 346
    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    if-nez v3, :cond_2

    .line 348
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 351
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->initializeAdController()V

    .line 358
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isWebViewDatabaseNull()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 360
    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    sget-object v4, Lcom/amazon/device/ads/MobileAdsLogger$Level;->ERROR:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    const-string v6, "Disabling ads. Local cache file is inaccessible so ads will fail if we try to create a WebView. Details of this Android bug found at: http://code.google.com/p/android/issues/detail?id=10789"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iput-boolean v5, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    goto :goto_0

    :cond_3
    move v3, v5

    .line 338
    goto :goto_1

    .line 364
    :cond_4
    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v3

    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LAYOUT_INITIALIZATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v3, v4, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 365
    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v3

    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LAYOUT_INITIALIZATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto/16 :goto_0
.end method

.method isActivityRootViewLayoutRequested()Z
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    return v0
.end method

.method isActivityRootViewNull()Z
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdLoading()Z
    .locals 1

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isLoading()Z

    move-result v0

    return v0
.end method

.method isInitialized()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    return v0
.end method

.method public isLoading()Z
    .locals 3

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    .line 1113
    .local v0, "adController":Lcom/amazon/device/ads/AdController;
    if-nez v0, :cond_0

    .line 1115
    const/4 v1, 0x0

    .line 1117
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/AdState;->LOADING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method isParentViewMissingAtLoadTime()Z
    .locals 1

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    return v0
.end method

.method isWebViewDatabaseNull()Z
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->canShowViews()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()Z
    .locals 1

    .prologue
    .line 647
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z
    .locals 7
    .param p1, "options"    # Lcom/amazon/device/ads/AdTargetingOptions;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 658
    if-nez p1, :cond_0

    .line 660
    new-instance p1, Lcom/amazon/device/ads/AdTargetingOptions;

    .end local p1    # "options":Lcom/amazon/device/ads/AdTargetingOptions;
    invoke-direct {p1}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 662
    .restart local p1    # "options":Lcom/amazon/device/ads/AdTargetingOptions;
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 664
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getNeedsToLoadAdOnLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 666
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Can\'t load an ad because ad loading is already in progress"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 700
    :goto_0
    return v0

    .line 669
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->initializeIfNecessary()V

    .line 670
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    .line 672
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The ad could not be initialized properly."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->isReadyToLoad()Z

    move-result v2

    if-nez v2, :cond_3

    .line 677
    sget-object v1, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdState:[I

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 689
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Can\'t load an ad because ad loading is already in progress"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :pswitch_0
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "An ad could not be loaded because of an unknown issue with web views."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :pswitch_1
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "An ad could not be loaded because the AdLayout has been destroyed."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "An ad could not be loaded because another ad is currently expanded."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_3
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->getTimeout()I

    move-result v3

    new-array v4, v1, [Lcom/amazon/device/ads/AdSlot;

    new-instance v5, Lcom/amazon/device/ads/AdSlot;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lcom/amazon/device/ads/AdSlot;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdTargetingOptions;)V

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, p1, v4}, Lcom/amazon/device/ads/AdLoadStarter;->loadAds(ILcom/amazon/device/ads/AdTargetingOptions;[Lcom/amazon/device/ads/AdSlot;)V

    .line 696
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getNeedsToLoadAdOnLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 698
    goto :goto_0

    .line 700
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAndResetIsPrepared()Z

    move-result v0

    goto :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 496
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 498
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 501
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->registerScreenStateBroadcastReceiver()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 506
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 508
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->collapseAd()V

    .line 509
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->unregisterScreenStateBroadcastReceiver()V

    .line 510
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 560
    iget-boolean v2, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    if-eqz v2, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    sub-int v1, p4, p2

    .line 565
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 566
    .local v0, "height":I
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 568
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/amazon/device/ads/AdController;->setWindowDimensions(II)V

    .line 575
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdLayout;->getAndSetNeedsToLoadAdOnLayout(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->startAdLoadUponLayout()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    if-eq v0, p1, :cond_0

    .line 516
    if-eqz p1, :cond_1

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    .line 519
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->collapseAd()V

    .line 520
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->unregisterScreenStateBroadcastReceiver()V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    if-nez p1, :cond_0

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    goto :goto_0
.end method

.method prepareAd(Z)Z
    .locals 4
    .param p1, "deferredLoad"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 721
    if-eqz p1, :cond_1

    .line 723
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Skipping ad layout preparation steps because the layout is already prepared."

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 766
    :cond_0
    :goto_0
    return v1

    .line 726
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->isReadyToLoad()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 728
    goto :goto_0

    .line 731
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getNeedsToLoadAdOnLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 733
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Can\'t load an ad because ad loading is already in progress"

    invoke-virtual {v1, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move v1, v2

    .line 734
    goto :goto_0

    .line 737
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 739
    const-string v0, "Ad size to be determined automatically."

    .line 740
    .local v0, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v3, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 743
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setIsParentViewMissingAtLoadTime()V

    .line 745
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdController;->areWindowDimensionsSet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 750
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime()Z

    move-result v3

    if-nez v3, :cond_6

    .line 755
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->deferAdLoadToLayoutEvent()V

    move v1, v2

    .line 756
    goto :goto_0

    .line 758
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The ad\'s parent view is missing at load time."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 764
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->loadAdWhenParentViewMissing()Z

    move-result v1

    goto :goto_0
.end method

.method resolveLayoutParamForFloatingAd(Z)I
    .locals 2
    .param p1, "isWidth"    # Z

    .prologue
    .line 915
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 917
    .local v0, "value":I
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 919
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isActivityRootViewNull()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 923
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout;->getRawScreenDimension(Z)I

    move-result v0

    .line 937
    .end local v0    # "value":I
    :cond_0
    :goto_1
    return v0

    .line 915
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 928
    .restart local v0    # "value":I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout;->getActivityRootViewDimension(Z)I

    move-result v0

    goto :goto_1

    .line 932
    :cond_3
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 934
    const/4 v0, 0x0

    goto :goto_1
.end method

.method scheduleTaskForCheckingIfLayoutHasRun()V
    .locals 5

    .prologue
    .line 966
    new-instance v0, Lcom/amazon/device/ads/AdLayout$3;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$3;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    .line 974
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/amazon/device/ads/AdLayout;->threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 975
    return-void
.end method

.method setActivityRootView()V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 1057
    return-void
.end method

.method setFloatingWindowDimensions()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 887
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_1

    .line 889
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "The requested ad will scale based on the screen\'s dimensions because at least one AdLayout dimension is set to MATCH_PARENT but the AdLayout is currently missing a fixed-size parent view."

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 893
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdLayout;->resolveLayoutParamForFloatingAd(Z)I

    move-result v1

    .line 894
    .local v1, "floatingWindowWidth":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdLayout;->resolveLayoutParamForFloatingAd(Z)I

    move-result v0

    .line 896
    .local v0, "floatingWindowHeight":I
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/amazon/device/ads/AdController;->setWindowDimensions(II)V

    .line 897
    return-void
.end method

.method setIsParentViewMissingAtLoadTime()V
    .locals 1

    .prologue
    .line 1033
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 1034
    return-void

    .line 1033
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setIsParentViewMissingAtLoadTime(Z)V
    .locals 0
    .param p1, "parentViewMissingAtLoadTime"    # Z

    .prologue
    .line 1040
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    .line 1041
    return-void
.end method

.method public setListener(Lcom/amazon/device/ads/AdListener;)V
    .locals 1
    .param p1, "adListener"    # Lcom/amazon/device/ads/AdListener;

    .prologue
    .line 1093
    if-nez p1, :cond_0

    .line 1095
    new-instance p1, Lcom/amazon/device/ads/DefaultAdListener;

    .end local p1    # "adListener":Lcom/amazon/device/ads/AdListener;
    sget-object v0, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Ljava/lang/String;)V

    .line 1097
    .restart local p1    # "adListener":Lcom/amazon/device/ads/AdListener;
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdListenerExecutorFactory;->createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;)Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    .line 1098
    return-void
.end method

.method setNeedsToLoadAdOnLayout(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1002
    return-void
.end method

.method setOnLayoutChangeListenerForRoot()V
    .locals 0

    .prologue
    .line 842
    invoke-static {p0}, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil;->setOnLayoutChangeListenerForRoot(Lcom/amazon/device/ads/AdLayout;)V

    .line 843
    return-void
.end method

.method setShouldDisableWebViewHardwareAcceleration(Z)V
    .locals 2
    .param p1, "shouldDisableWebViewHardwareAcceleration"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdLayout;->shouldDisableWebViewHardwareAcceleration:Z

    .line 302
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    iget-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->shouldDisableWebViewHardwareAcceleration:Z

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->requestDisableHardwareAcceleration(Z)V

    .line 306
    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    .line 617
    .local v0, "adController":Lcom/amazon/device/ads/AdController;
    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setTimeout(I)V

    .line 621
    :cond_0
    return-void
.end method

.method shouldDisableWebViewHardwareAcceleration()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->shouldDisableWebViewHardwareAcceleration:Z

    return v0
.end method
