.class public Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;
.super Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;
.source "LocationProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;->LOCATION_PROCESSOR:Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    invoke-direct {p0, v0}, Lcom/cuebiq/cuebiqsdk/model/processor/AbstractProcessor;-><init>(Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;)V

    .line 23
    return-void
.end method


# virtual methods
.method public gather(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "information"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .param p3, "listener"    # Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;

    .prologue
    .line 27
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;-><init>()V

    .line 28
    .local v0, "locationManager":Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;
    new-instance v1, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;-><init>(Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)V

    invoke-virtual {v0, p1, v1}, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->getLocation(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;)V

    .line 63
    return-void
.end method
