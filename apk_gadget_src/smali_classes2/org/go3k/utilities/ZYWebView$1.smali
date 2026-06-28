.class Lorg/go3k/utilities/ZYWebView$1;
.super Ljava/lang/Object;
.source "ZYWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/go3k/utilities/ZYWebView;->displayWebView(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/go3k/utilities/ZYWebView;

.field final synthetic val$height:I

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lorg/go3k/utilities/ZYWebView;IIII)V
    .locals 0
    .param p1, "this$0"    # Lorg/go3k/utilities/ZYWebView;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    iput p2, p0, Lorg/go3k/utilities/ZYWebView$1;->val$x:I

    iput p3, p0, Lorg/go3k/utilities/ZYWebView$1;->val$y:I

    iput p4, p0, Lorg/go3k/utilities/ZYWebView$1;->val$width:I

    iput p5, p0, Lorg/go3k/utilities/ZYWebView$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 59
    :try_start_0
    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v2}, Lorg/go3k/utilities/ZYWebView;->access$000(Lorg/go3k/utilities/ZYWebView;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-static {}, Lorg/go3k/utilities/ZYWebView;->access$100()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lorg/go3k/utilities/ZYWebView;->access$002(Lorg/go3k/utilities/ZYWebView;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 62
    invoke-static {}, Lorg/go3k/utilities/ZYWebView;->access$100()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v3}, Lorg/go3k/utilities/ZYWebView;->access$000(Lorg/go3k/utilities/ZYWebView;)Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :cond_0
    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v2}, Lorg/go3k/utilities/ZYWebView;->access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 72
    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    new-instance v3, Landroid/webkit/WebView;

    invoke-static {}, Lorg/go3k/utilities/ZYWebView;->access$100()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lorg/go3k/utilities/ZYWebView;->access$202(Lorg/go3k/utilities/ZYWebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 73
    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v2}, Lorg/go3k/utilities/ZYWebView;->access$000(Lorg/go3k/utilities/ZYWebView;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v3}, Lorg/go3k/utilities/ZYWebView;->access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    :cond_1
    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v2}, Lorg/go3k/utilities/ZYWebView;->access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 77
    .local v1, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lorg/go3k/utilities/ZYWebView$1;->val$x:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 78
    iget v2, p0, Lorg/go3k/utilities/ZYWebView$1;->val$y:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 79
    iget v2, p0, Lorg/go3k/utilities/ZYWebView$1;->val$width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 80
    iget v2, p0, Lorg/go3k/utilities/ZYWebView$1;->val$height:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 81
    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v2}, Lorg/go3k/utilities/ZYWebView;->access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v2}, Lorg/go3k/utilities/ZYWebView;->access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 84
    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v2}, Lorg/go3k/utilities/ZYWebView;->access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 85
    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v2}, Lorg/go3k/utilities/ZYWebView;->access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 86
    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v2}, Lorg/go3k/utilities/ZYWebView;->access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 89
    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$1;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v2}, Lorg/go3k/utilities/ZYWebView;->access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lorg/go3k/utilities/ZYWebView$1$1;

    invoke-direct {v3, p0}, Lorg/go3k/utilities/ZYWebView$1$1;-><init>(Lorg/go3k/utilities/ZYWebView$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DA2.WebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayWebView->run() unable to be shown. Exception message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
