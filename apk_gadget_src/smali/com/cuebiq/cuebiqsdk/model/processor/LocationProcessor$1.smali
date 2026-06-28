.class Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;
.super Ljava/lang/Object;
.source "LocationProcessor.java"

# interfaces
.implements Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;->gather(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$information:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

.field final synthetic val$listener:Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;

    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$listener:Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;

    iput-object p4, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$information:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocation(Landroid/location/Location;)V
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location Processor -> Location acquired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 33
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getTlowo()I

    move-result v3

    if-nez v3, :cond_1

    .line 34
    if-nez p1, :cond_1

    .line 35
    const-string v3, "Location Processor -> Location not available. Skip tracking."

    invoke-static {v3}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 36
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$listener:Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;

    iget-object v4, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;

    invoke-virtual {v4}, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;->getType()Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;->onProcessorCompleted(Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;)V

    .line 61
    :goto_1
    return-void

    .line 31
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 42
    :cond_1
    if-eqz p1, :cond_2

    .line 43
    :try_start_0
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$information:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->build(Landroid/location/Location;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setGeo(Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;)V

    .line 45
    :cond_2
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$information:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setTimestamp(Ljava/lang/Long;)V

    .line 46
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$information:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    iget-object v4, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->getBatteryLevel(Landroid/content/Context;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setBatteryLevel(Ljava/lang/Float;)V

    .line 47
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$information:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-static {}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->getIPAddressV4()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setIpAddressV4(Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$information:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-static {}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->getIPAddressV6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setIpAddressV6(Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 51
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 52
    .local v2, "net":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 53
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$information:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setDataConnectionType(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$information:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setIsRoaming(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    .end local v2    # "net":Landroid/net/NetworkInfo;
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->val$listener:Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;

    iget-object v4, p0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;

    invoke-virtual {v4}, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;->getType()Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;->onProcessorCompleted(Lcom/cuebiq/cuebiqsdk/model/processor/ProcessorType;)V

    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    goto :goto_2
.end method
