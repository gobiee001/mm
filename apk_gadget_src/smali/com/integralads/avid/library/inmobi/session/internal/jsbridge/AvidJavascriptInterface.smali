.class public Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;
.super Ljava/lang/Object;
.source "AvidJavascriptInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$CallbackRunnable;,
        Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;
    }
.end annotation


# instance fields
.field private final avidAdSessionContext:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;

.field private callback:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;->handler:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;->avidAdSessionContext:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;)Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;->callback:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;)Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;->callback:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;

    return-object p1
.end method


# virtual methods
.method public getAvidAdSessionContext()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$CallbackRunnable;

    invoke-direct {v1, p0}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$CallbackRunnable;-><init>(Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;->avidAdSessionContext:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->getStubContext()Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 36
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setCallback(Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;->callback:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;

    .line 31
    return-void
.end method
