.class Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;
.super Landroid/os/AsyncTask;
.source "AdMetricsTasks.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdMetricsSubmitAaxTask$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/amazon/device/ads/WebRequest;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "AdMetricsSubmitAaxTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    check-cast p1, [Lcom/amazon/device/ads/WebRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->doInBackground([Lcom/amazon/device/ads/WebRequest;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AdMetricsSubmitAaxTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public varargs doInBackground([Lcom/amazon/device/ads/WebRequest;)Ljava/lang/Void;
    .locals 11
    .param p1, "webRequests"    # [Lcom/amazon/device/ads/WebRequest;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 25
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazon/device/ads/WebRequest;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 29
    .local v4, "webRequest":Lcom/amazon/device/ads/WebRequest;
    :try_start_0
    invoke-virtual {v4}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Lcom/amazon/device/ads/WebRequest$WebRequestException;
    sget-object v5, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask$1;->$SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus:[I

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getStatus()Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 39
    :pswitch_0
    iget-object v5, p0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Unable to submit metrics for ad due to an Invalid Client Protocol, msg: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 42
    :pswitch_1
    iget-object v5, p0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Unable to submit metrics for ad due to Network Failure, msg: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 45
    :pswitch_2
    iget-object v5, p0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Unable to submit metrics for ad due to a Malformed Pixel URL, msg: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :pswitch_3
    iget-object v5, p0, Lcom/amazon/device/ads/AdMetricsSubmitAaxTask;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Unable to submit metrics for ad because of unsupported character encoding, msg: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 57
    .end local v1    # "e":Lcom/amazon/device/ads/WebRequest$WebRequestException;
    .end local v4    # "webRequest":Lcom/amazon/device/ads/WebRequest;
    :cond_0
    const/4 v5, 0x0

    return-object v5

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
