.class Lcom/integralads/avid/library/mopub/AvidStateWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "AvidStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/integralads/avid/library/mopub/AvidStateWatcher;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/integralads/avid/library/mopub/AvidStateWatcher;


# direct methods
.method constructor <init>(Lcom/integralads/avid/library/mopub/AvidStateWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher$1;->this$0:Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 84
    if-nez p2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher$1;->this$0:Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->access$000(Lcom/integralads/avid/library/mopub/AvidStateWatcher;Z)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher$1;->this$0:Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    invoke-static {v1, v3}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->access$000(Lcom/integralads/avid/library/mopub/AvidStateWatcher;Z)V

    goto :goto_0

    .line 90
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 92
    .local v0, "km":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher$1;->this$0:Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    invoke-static {v1, v3}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->access$000(Lcom/integralads/avid/library/mopub/AvidStateWatcher;Z)V

    goto :goto_0
.end method
