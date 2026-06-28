.class Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4$1;
.super Ljava/lang/Object;
.source "CuebiqSDKImpl.java"

# interfaces
.implements Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;->onGoogleAdvID(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4$1;->this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryCovered()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 350
    const-string v0, "Cuebiq Integration"

    const-string v1, "The SDK is working correctly."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v0, 0xa

    if-ge v6, v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4$1;->this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;

    iget-object v0, v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;->val$context:Landroid/content/Context;

    const-string v1, "Integration Test"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->collectCustomEvents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 355
    :cond_0
    const-string v0, "Cuebiq Integration"

    const-string v1, "Integration test completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v0, "Cuebiq Integration"

    const-string v1, "*** WARNING *** Remember to switch environment to PRODUCTION before release on Play Store."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v0, "Cuebiq Integration"

    const-string v1, "==========================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method public onCountryNotCovered()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 362
    const-string v0, "Cuebiq Integration"

    const-string v1, "The SDK is working correctly."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v0, 0xa

    if-ge v6, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4$1;->this$0:Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;

    iget-object v0, v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;->val$context:Landroid/content/Context;

    const-string v1, "Integration Test"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->collectCustomEvents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 367
    :cond_0
    const-string v0, "Cuebiq Integration"

    const-string v1, "Integration test completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v0, "Cuebiq Integration"

    const-string v1, "*** WARNING *** Remember to switch environment to PRODUCTION before release on Play Store."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v0, "Cuebiq Integration"

    const-string v1, "==========================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string v0, "Cuebiq Integration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error has occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v0, "Cuebiq Integration"

    const-string v1, "Please contact Cuebiq support team at: publishers@cuebiq.com"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v0, "Cuebiq Integration"

    const-string v1, "==========================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void
.end method
