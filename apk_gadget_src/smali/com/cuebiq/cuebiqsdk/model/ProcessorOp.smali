.class public Lcom/cuebiq/cuebiqsdk/model/ProcessorOp;
.super Ljava/lang/Object;
.source "ProcessorOp.java"


# instance fields
.field public final mListener:Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;

.field public final mProcessor:Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;


# direct methods
.method public constructor <init>(Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;)V
    .locals 0
    .param p1, "processor"    # Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;
    .param p2, "listener"    # Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/ProcessorOp;->mProcessor:Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;

    .line 17
    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/model/ProcessorOp;->mListener:Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;

    .line 18
    return-void
.end method
