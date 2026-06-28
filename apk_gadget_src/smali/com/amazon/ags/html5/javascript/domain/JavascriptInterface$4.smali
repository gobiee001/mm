.class Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$4;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$4;->this$0:Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    iput-object p2, p0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$4;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 181
    :try_start_0
    invoke-static {}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getShowToastsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toastsUndefined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$4;->this$0:Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    invoke-static {v1}, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->access$300(Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :try_start_1
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$4;->this$0:Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    invoke-static {v1}, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->access$300(Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 184
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :cond_0
    :goto_0
    invoke-static {}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getShowToastsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "showToasts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$4;->this$0:Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;

    invoke-static {v1}, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;->access$200(Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface;)Lcom/amazon/ags/html5/overlay/OverlayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/html5/javascript/domain/JavascriptInterface$4;->val$json:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/ags/html5/overlay/OverlayManager;->showToast(Ljava/lang/String;)V

    .line 195
    :cond_1
    return-void

    .line 184
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 186
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
