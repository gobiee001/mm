.class Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3$1;
.super Ljava/lang/Object;
.source "CuebiqSDKImpl.java"

# interfaces
.implements Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3$1;->this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocation(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3$1;->this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;

    iget-object v0, v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getTlowo()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    if-nez p1, :cond_0

    .line 291
    const-string v0, "CuebiqSDK -> Location not available. Skip tracking."

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3$1;->this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;

    iget-object v0, v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3$1;->this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;

    iget-object v2, v1, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$eventName:Ljava/lang/String;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3$1;->this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;

    iget-object v3, v1, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$eventInfo1:Ljava/lang/String;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3$1;->this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;

    iget-object v4, v1, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$eventInfo2:Ljava/lang/String;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3$1;->this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;

    iget-object v5, v1, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$eventInfo3:Ljava/lang/String;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3$1;->this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;

    iget-object v6, v1, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$3;->val$eventInfo4:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/cuebiq/cuebiqsdk/model/manager/CustomEventManager;->gatherCustomEvent(Landroid/content/Context;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
