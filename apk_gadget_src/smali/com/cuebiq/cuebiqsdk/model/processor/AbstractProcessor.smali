.class public abstract Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;
.super Ljava/lang/Object;
.source "AbstractProcessor.java"


# instance fields
.field private final mType:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;)V
    .locals 0
    .param p1, "type"    # Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;->mType:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract gather(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;)V
.end method

.method getType()Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;->mType:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    return-object v0
.end method
