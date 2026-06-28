.class Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;
.super Landroid/webkit/WebViewClient;
.source "OpenUrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/OpenUrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;


# direct methods
.method private constructor <init>(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/supersonicads/sdk/controller/OpenUrlActivity;Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/supersonicads/sdk/controller/OpenUrlActivity;
    .param p2, "x1"    # Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;-><init>(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->access$300(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 206
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 197
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 199
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->access$300(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 200
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSearchKeys()Ljava/util/List;

    move-result-object v3

    .line 219
    .local v3, "searchKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 224
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-virtual {v4, v1}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-static {v4}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->access$400(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->interceptedUrlToStore()V

    .line 228
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->finish()V

    .line 229
    const/4 v4, 0x1

    .line 234
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    return v4

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method
