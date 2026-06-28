.class public Lcom/chartboost/sdk/CBImpressionActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/Tracking/a;

.field final b:Landroid/os/Handler;

.field final c:Lcom/chartboost/sdk/c;

.field private d:Landroid/app/Activity;

.field private final e:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    :goto_0
    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Tracking/a;

    .line 40
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    :goto_1
    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->b:Landroid/os/Handler;

    .line 41
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    :goto_2
    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    .line 43
    iput-object v1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->d:Landroid/app/Activity;

    .line 224
    new-instance v0, Lcom/chartboost/sdk/CBImpressionActivity$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/CBImpressionActivity$1;-><init>(Lcom/chartboost/sdk/CBImpressionActivity;)V

    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->e:Landroid/telephony/PhoneStateListener;

    return-void

    :cond_0
    move-object v0, v1

    .line 39
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 40
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 41
    goto :goto_2
.end method

.method private a()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/high16 v2, 0x1000000

    .line 77
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 82
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/m;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/CBImpressionActivity$2;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/CBImpressionActivity$2;-><init>(Lcom/chartboost/sdk/CBImpressionActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public forwardTouchEvents(Landroid/app/Activity;)V
    .locals 0
    .param p1, "host"    # Landroid/app/Activity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->d:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 203
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 205
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_1

    .line 209
    const-string v0, "CBImpressionActivity"

    const-string v1, "The activity passed down is not hardware accelerated, so Chartboost cannot show ads"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onBackPressed"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, "CBImpressionActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "CBImpressionActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isChartboost"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Tracking/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-nez v0, :cond_2

    .line 61
    :cond_1
    const-string v0, "CBImpressionActivity"

    const-string v1, "This activity cannot be called from outside chartboost SDK"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->finish()V

    .line 63
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 73
    :goto_1
    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "CBImpressionActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 65
    :cond_2
    invoke-direct {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->a()V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBImpressionActivity;->requestWindowFeature(I)Z

    .line 68
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    .line 70
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBImpressionActivity;->setContentView(Landroid/view/View;)V

    .line 71
    invoke-direct {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->b()V

    .line 72
    const-class v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Impression Activity onCreate() called"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->k(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 185
    :goto_0
    return-void

    .line 178
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onDestroy"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 130
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    .line 133
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 113
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/app/Activity;)V

    .line 125
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onResume"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 87
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 88
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->e(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBImpressionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 99
    if-eqz v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->e:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 108
    :cond_1
    :goto_1
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onStart"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    .line 104
    const-string v1, "CBImpressionActivity"

    const-string v2, "Unable to register phone state listener"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 105
    :catch_2
    move-exception v0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onStart"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    .line 145
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 146
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->s:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/c;->i(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBImpressionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 158
    if-eqz v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->e:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 167
    :cond_1
    :goto_1
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onStop"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 161
    :catch_1
    move-exception v0

    .line 163
    const-string v1, "CBImpressionActivity"

    const-string v2, "Unable to deregister phone state listener"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 164
    :catch_2
    move-exception v0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onStop"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
