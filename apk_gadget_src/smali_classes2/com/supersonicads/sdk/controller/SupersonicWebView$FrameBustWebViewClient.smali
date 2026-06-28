.class Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameBustWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method private constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p2, "x1"    # Lcom/supersonicads/sdk/controller/SupersonicWebView$1;

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 644
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    .line 646
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 647
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    sget-object v2, Lcom/supersonicads/sdk/controller/SupersonicWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 649
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 651
    const/4 v2, 0x1

    return v2
.end method
