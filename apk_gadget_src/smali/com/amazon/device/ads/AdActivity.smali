.class public Lcom/amazon/device/ads/AdActivity;
.super Landroid/app/Activity;
.source "AdActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;,
        Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;
    }
.end annotation


# static fields
.field static final ADAPTER_KEY:Ljava/lang/String; = "adapter"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private activityAdapterFactory:Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

.field private adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

.field private amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

.field private logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/amazon/device/ads/AdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdActivity;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v1

    new-instance v2, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    new-instance v3, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/device/ads/AdActivity;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;)V

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;)V
    .locals 1
    .param p1, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p2, "amazonAdRegistration"    # Lcom/amazon/device/ads/AdRegistrationExecutor;
    .param p3, "activityAdapterFactory"    # Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    sget-object v0, Lcom/amazon/device/ads/AdActivity;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdActivity;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 35
    iput-object p2, p0, Lcom/amazon/device/ads/AdActivity;->amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 36
    iput-object p3, p0, Lcom/amazon/device/ads/AdActivity;->activityAdapterFactory:Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/amazon/device/ads/AdActivity;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method private initializeSdk()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdActivity;->setLoggerFactory(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdActivity;->setAmazonAdRegistrationExecutor(Lcom/amazon/device/ads/AdRegistrationExecutor;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->activityAdapterFactory:Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdActivity;->setActivityAdapterFactory(Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;)V

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdRegistrationExecutor;->initializeAds(Landroid/content/Context;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 146
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "AdActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "AdActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdActivity;->initializeSdk()V

    .line 45
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->activityAdapterFactory:Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->createAdapter(Landroid/content/Intent;)Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    .line 46
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    if-nez v0, :cond_0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdActivity;->finish()V

    .line 50
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 58
    :goto_1
    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AdActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0, p0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->setActivity(Landroid/app/Activity;)V

    .line 53
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->preOnCreate()V

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->onCreate()V

    .line 58
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->onPause()V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->onResume()V

    .line 103
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    .line 108
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;->onStop()V

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 110
    return-void
.end method

.method setActivityAdapterFactory(Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;)V
    .locals 0
    .param p1, "activityAdapterFactory"    # Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/amazon/device/ads/AdActivity;->activityAdapterFactory:Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    .line 89
    return-void
.end method

.method setAmazonAdRegistrationExecutor(Lcom/amazon/device/ads/AdRegistrationExecutor;)V
    .locals 0
    .param p1, "amazonAdRegistrationExecutor"    # Lcom/amazon/device/ads/AdRegistrationExecutor;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazon/device/ads/AdActivity;->amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 85
    return-void
.end method

.method setLoggerFactory(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1
    .param p1, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .prologue
    .line 80
    sget-object v0, Lcom/amazon/device/ads/AdActivity;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdActivity;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 81
    return-void
.end method
