.class Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1$1;
.super Ljava/lang/Object;
.source "CoverageReceiver.java"

# interfaces
.implements Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1$1;->this$1:Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollectorFinished()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "CoverageReceiver -> ...acquisition completed."

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 62
    return-void
.end method
