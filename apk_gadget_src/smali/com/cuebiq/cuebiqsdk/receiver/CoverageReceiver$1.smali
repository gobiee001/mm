.class Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;
.super Ljava/lang/Object;
.source "CoverageReceiver.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;->this$0:Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;

    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->build(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    move-result-object v0

    .line 56
    .local v0, "auth":Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->build(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    move-result-object v1

    .line 58
    .local v1, "device":Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;
    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;-><init>()V

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1$1;

    invoke-direct {v4, p0}, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1$1;-><init>(Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->collect(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;)V

    .line 66
    .end local v0    # "auth":Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;
    .end local v1    # "device":Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
