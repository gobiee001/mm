.class Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$1;
.super Ljava/lang/Object;
.source "CollectorRequest.java"

# interfaces
.implements Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->collect(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessorCompleted(Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;)V
    .locals 1
    .param p1, "processor"    # Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->access$000(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;)V

    .line 64
    return-void
.end method
