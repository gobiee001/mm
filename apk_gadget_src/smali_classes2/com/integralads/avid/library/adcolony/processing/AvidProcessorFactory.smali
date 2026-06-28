.class public Lcom/integralads/avid/library/adcolony/processing/AvidProcessorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/integralads/avid/library/adcolony/processing/AvidSceenProcessor;

.field private b:Lcom/integralads/avid/library/adcolony/processing/AvidViewProcessor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/integralads/avid/library/adcolony/processing/AvidViewProcessor;

    invoke-direct {v0}, Lcom/integralads/avid/library/adcolony/processing/AvidViewProcessor;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/processing/AvidProcessorFactory;->b:Lcom/integralads/avid/library/adcolony/processing/AvidViewProcessor;

    .line 10
    new-instance v0, Lcom/integralads/avid/library/adcolony/processing/AvidSceenProcessor;

    iget-object v1, p0, Lcom/integralads/avid/library/adcolony/processing/AvidProcessorFactory;->b:Lcom/integralads/avid/library/adcolony/processing/AvidViewProcessor;

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/adcolony/processing/AvidSceenProcessor;-><init>(Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor;)V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/processing/AvidProcessorFactory;->a:Lcom/integralads/avid/library/adcolony/processing/AvidSceenProcessor;

    .line 11
    return-void
.end method


# virtual methods
.method public getRootProcessor()Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/processing/AvidProcessorFactory;->a:Lcom/integralads/avid/library/adcolony/processing/AvidSceenProcessor;

    return-object v0
.end method
