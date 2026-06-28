.class Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;
.super Ljava/lang/Object;
.source "ResourcesHelper.java"

# interfaces
.implements Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;->bea(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;->val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .prologue
    .line 53
    const-string v0, "ResourcesHelper -> Error retrieving GoogleAdvertisingID."

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;->val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-interface {v0, v1, v2}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 55
    return-void
.end method

.method public onGoogleAdvID(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "googleAdvertisingID"    # Ljava/lang/String;
    .param p2, "isLimitedADTracking"    # Z

    .prologue
    .line 37
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getTase()I

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string v0, "ResourcesHelper -> Device is OptedOut, abort request."

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    :cond_1
    const-string v0, "ResourcesHelper -> Failed to retrieve GoogleAdvertisingID."

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;->val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-interface {v0, v1, v2}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;->val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;->access$000(Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Ljava/lang/String;Z)V

    goto :goto_0
.end method
