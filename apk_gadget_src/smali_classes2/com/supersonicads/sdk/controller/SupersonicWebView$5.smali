.class Lcom/supersonicads/sdk/controller/SupersonicWebView$5;
.super Ljava/lang/Object;
.source "SupersonicWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;->injectJavascript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

.field final synthetic val$scriptBuilder:Ljava/lang/StringBuilder;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 2692
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iput-object p2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2694
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2697
    :try_start_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2698
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5900(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2699
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$6000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 2728
    :goto_0
    return-void

    .line 2701
    :cond_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2724
    :catch_0
    move-exception v1

    .line 2725
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectJavascript: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    new-instance v2, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=injectJavaScript"

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2704
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 2707
    :try_start_2
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$6000(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/String;)V

    .line 2708
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5902(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2709
    :catch_1
    move-exception v0

    .line 2710
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    :try_start_3
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evaluateJavascrip NoSuchMethodError: SDK version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2711
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V

    .line 2712
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5902(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2713
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v0

    .line 2714
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evaluateJavascrip Exception: SDK version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V

    .line 2717
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5902(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2720
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadUrl(Ljava/lang/String;)V

    .line 2721
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$5;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$5902(Lcom/supersonicads/sdk/controller/SupersonicWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
