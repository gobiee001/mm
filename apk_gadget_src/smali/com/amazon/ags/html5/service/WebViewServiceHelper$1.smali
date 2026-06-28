.class Lcom/amazon/ags/html5/service/WebViewServiceHelper$1;
.super Ljava/lang/Object;
.source "WebViewServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/html5/service/WebViewServiceHelper;->deliverMessageToJavascript(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/service/WebViewServiceHelper;

.field final synthetic val$msg:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/service/WebViewServiceHelper;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/amazon/ags/html5/service/WebViewServiceHelper$1;->this$0:Lcom/amazon/ags/html5/service/WebViewServiceHelper;

    iput-object p2, p0, Lcom/amazon/ags/html5/service/WebViewServiceHelper$1;->val$msg:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/ags/html5/service/WebViewServiceHelper$1;->this$0:Lcom/amazon/ags/html5/service/WebViewServiceHelper;

    iget-object v1, v0, Lcom/amazon/ags/html5/service/WebViewServiceHelper;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:handleMessage("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amazon/ags/html5/service/WebViewServiceHelper$1;->val$msg:Lorg/json/JSONObject;

    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 82
    return-void

    .line 81
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
