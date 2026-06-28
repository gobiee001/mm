.class Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$CallbackRunnable;
.super Ljava/lang/Object;
.source "AvidJavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallbackRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$CallbackRunnable;->this$0:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$CallbackRunnable;->this$0:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;

    invoke-static {v0}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;->access$000(Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;)Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$CallbackRunnable;->this$0:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;

    invoke-static {v0}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;->access$000(Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;)Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;->onAvidAdSessionContextInvoked()V

    .line 46
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$CallbackRunnable;->this$0:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;->access$002(Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface;Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;)Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;

    .line 48
    :cond_0
    return-void
.end method
