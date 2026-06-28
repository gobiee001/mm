.class public Lcom/android/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/android/util/IabHelper$QueryInventoryFinishedListener;,
        Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/android/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v1, p0, Lcom/android/util/IabHelper;->mDebugLog:Z

    .line 82
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/android/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Lcom/android/util/IabHelper;->mSetupDone:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/util/IabHelper;->mDisposed:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/util/IabHelper;->mSubscriptionsSupported:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/util/IabHelper;->mAsyncInProgress:Z

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/android/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/util/IabHelper;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/android/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 174
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/util/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 781
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    .line 784
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v4, "/"

    .line 794
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 797
    rsub-int v2, p0, -0x3e8

    .line 798
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 804
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 799
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 801
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 802
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 804
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/android/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/util/IabHelper;->mSetupDone:Z

    .line 308
    iget-object v0, p0, Lcom/android/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 312
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/util/IabHelper;->mDisposed:Z

    .line 313
    iput-object v2, p0, Lcom/android/util/IabHelper;->mContext:Landroid/content/Context;

    .line 314
    iput-object v2, p0, Lcom/android/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 315
    iput-object v2, p0, Lcom/android/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 316
    iput-object v2, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 317
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/util/IabHelper;->checkNotDisposed()V

    .line 181
    iput-boolean p1, p0, Lcom/android/util/IabHelper;->mDebugLog:Z

    .line 182
    iput-object p2, p0, Lcom/android/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 183
    return-void
.end method

.method flagEndAsync()V
    .locals 1

    .prologue
    .line 862
    const-string v0, ""

    iput-object v0, p0, Lcom/android/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/util/IabHelper;->mAsyncInProgress:Z

    .line 864
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/android/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_0
    iput-object p1, p0, Lcom/android/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/util/IabHelper;->mAsyncInProgress:Z

    .line 858
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 822
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 823
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 825
    const/4 v1, 0x0

    .line 828
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 827
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 828
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 832
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 838
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 839
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 841
    const/4 v1, 0x0

    .line 844
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 843
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 844
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 848
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 457
    iget v8, p0, Lcom/android/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    const/4 v8, 0x0

    .line 536
    :goto_0
    return v8

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/android/util/IabHelper;->checkNotDisposed()V

    .line 460
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/android/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/util/IabHelper;->flagEndAsync()V

    .line 465
    if-nez p3, :cond_2

    .line 467
    new-instance v6, Lcom/android/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 468
    .local v6, "result":Lcom/android/util/IabResult;
    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V

    .line 469
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 472
    .end local v6    # "result":Lcom/android/util/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 473
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    if-nez v5, :cond_a

    .line 483
    if-eqz v4, :cond_3

    if-nez v0, :cond_5

    .line 486
    :cond_3
    new-instance v6, Lcom/android/util/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 487
    .restart local v6    # "result":Lcom/android/util/IabResult;
    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V

    .line 488
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 491
    .end local v6    # "result":Lcom/android/util/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 493
    .local v2, "purchase":Lcom/android/util/Purchase;
    :try_start_0
    new-instance v3, Lcom/android/util/Purchase;

    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lcom/android/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v2    # "purchase":Lcom/android/util/Purchase;
    .local v3, "purchase":Lcom/android/util/Purchase;
    :try_start_1
    invoke-virtual {v3}, Lcom/android/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 498
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/android/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 500
    new-instance v6, Lcom/android/util/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature verification failed for sku "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 501
    .restart local v6    # "result":Lcom/android/util/IabResult;
    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 506
    .end local v3    # "purchase":Lcom/android/util/Purchase;
    .end local v6    # "result":Lcom/android/util/IabResult;
    .end local v7    # "sku":Ljava/lang/String;
    .restart local v2    # "purchase":Lcom/android/util/Purchase;
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 509
    new-instance v6, Lcom/android/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 510
    .restart local v6    # "result":Lcom/android/util/IabResult;
    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V

    .line 511
    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 514
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/android/util/Purchase;
    .end local v6    # "result":Lcom/android/util/IabResult;
    .restart local v3    # "purchase":Lcom/android/util/Purchase;
    .restart local v7    # "sku":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    .line 515
    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/android/util/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V

    .line 536
    .end local v3    # "purchase":Lcom/android/util/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_9
    :goto_2
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 518
    :cond_a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    .line 521
    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    .line 522
    new-instance v6, Lcom/android/util/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 523
    .restart local v6    # "result":Lcom/android/util/IabResult;
    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V

    goto :goto_2

    .line 526
    .end local v6    # "result":Lcom/android/util/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 528
    new-instance v6, Lcom/android/util/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 529
    .restart local v6    # "result":Lcom/android/util/IabResult;
    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V

    goto :goto_2

    .line 533
    .end local v6    # "result":Lcom/android/util/IabResult;
    :cond_c
    new-instance v6, Lcom/android/util/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 534
    .restart local v6    # "result":Lcom/android/util/IabResult;
    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V

    goto :goto_2

    .line 506
    .end local v6    # "result":Lcom/android/util/IabResult;
    .restart local v3    # "purchase":Lcom/android/util/Purchase;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lcom/android/util/Purchase;
    .restart local v2    # "purchase":Lcom/android/util/Purchase;
    goto :goto_1
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 356
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/android/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/android/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/android/util/IabHelper;->checkNotDisposed()V

    .line 390
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/android/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 391
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/android/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 394
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_1

    .line 395
    new-instance v11, Lcom/android/util/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v11, v1, v2}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 397
    .local v11, "r":Lcom/android/util/IabResult;
    invoke-virtual {p0}, Lcom/android/util/IabHelper;->flagEndAsync()V

    .line 398
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V

    .line 440
    .end local v11    # "r":Lcom/android/util/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 405
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/android/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 406
    .local v12, "response":I
    if-eqz v12, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/android/util/IabHelper;->flagEndAsync()V

    .line 409
    new-instance v13, Lcom/android/util/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 410
    .local v13, "result":Lcom/android/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 424
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/android/util/IabResult;
    :catch_0
    move-exception v9

    .line 426
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 427
    invoke-virtual {p0}, Lcom/android/util/IabHelper;->flagEndAsync()V

    .line 429
    new-instance v13, Lcom/android/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 430
    .restart local v13    # "result":Lcom/android/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V

    goto :goto_0

    .line 414
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/android/util/IabResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 416
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    move/from16 v0, p4

    iput v0, p0, Lcom/android/util/IabHelper;->mRequestCode:I

    .line 417
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/util/IabHelper;->mPurchaseListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 418
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 419
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 421
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 419
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 432
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_1
    move-exception v9

    .line 434
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 435
    invoke-virtual {p0}, Lcom/android/util/IabHelper;->flagEndAsync()V

    .line 437
    new-instance v13, Lcom/android/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 438
    .restart local v13    # "result":Lcom/android/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/android/util/IabResult;Lcom/android/util/Purchase;)V

    goto/16 :goto_0
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/android/util/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/util/IabException;
        }
    .end annotation

    .prologue
    .line 540
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/util/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/android/util/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/android/util/Inventory;
    .locals 8
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/util/IabException;
        }
    .end annotation

    .prologue
    .line 558
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/util/IabHelper;->checkNotDisposed()V

    .line 560
    :try_start_0
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/android/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 567
    :try_start_1
    new-instance v1, Lcom/android/util/Inventory;

    invoke-direct {v1}, Lcom/android/util/Inventory;-><init>()V

    .line 568
    .local v1, "inv":Lcom/android/util/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/android/util/IabHelper;->queryPurchases(Lcom/android/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 569
    .local v2, "r":I
    if-eqz v2, :cond_1

    .line 570
    new-instance v3, Lcom/android/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/android/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 597
    .end local v1    # "inv":Lcom/android/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/android/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 561
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "IabHelper"

    const-string v4, "IabHelper::queryInventoryOperation failed: BILLING_NOT_SETUP"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    const-string v3, "IAB"

    const-string v4, "IabHelper::queryInventoryOperation%sBILLING_NOT_SETUP"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v1, 0x0

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1

    .line 573
    .restart local v1    # "inv":Lcom/android/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    if-eqz p1, :cond_2

    .line 574
    :try_start_2
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/android/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/android/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 575
    if-eqz v2, :cond_2

    .line 576
    new-instance v3, Lcom/android/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/android/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 600
    .end local v1    # "inv":Lcom/android/util/Inventory;
    .end local v2    # "r":I
    :catch_2
    move-exception v0

    .line 601
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/android/util/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/android/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 581
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/android/util/Inventory;
    .restart local v2    # "r":I
    :cond_2
    :try_start_3
    iget-boolean v3, p0, Lcom/android/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_0

    .line 582
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/android/util/IabHelper;->queryPurchases(Lcom/android/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 583
    if-eqz v2, :cond_3

    .line 584
    new-instance v3, Lcom/android/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/android/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 587
    :cond_3
    if-eqz p1, :cond_0

    .line 588
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/android/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/android/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 589
    if-eqz v2, :cond_0

    .line 590
    new-instance v3, Lcom/android/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/android/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/android/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 8
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/android/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 632
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 633
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/android/util/IabHelper;->checkNotDisposed()V

    .line 635
    :try_start_0
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/android/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/android/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 642
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/util/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/util/IabHelper$2;-><init>(Lcom/android/util/IabHelper;ZLjava/util/List;Lcom/android/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 665
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 666
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v6

    .line 637
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "IabHelper"

    const-string v1, "IabHelper::queryInventoryAsyncOperation failed: BILLING_NOT_SETUP"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    const-string v0, "IAB"

    const-string v1, "IabHelper::queryInventoryAsyncOperation%sBILLING_NOT_SETUP"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/appsomniacs/core/AnswersLogUtility;->PARAM_NAME_VALUE_PAIR_SPLIT_TOKEN:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method queryPurchases(Lcom/android/util/Inventory;Ljava/lang/String;)I
    .locals 24
    .param p1, "inv"    # Lcom/android/util/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 871
    const/16 v18, 0x0

    .line 872
    .local v18, "verificationFailed":Z
    const/4 v4, 0x0

    .line 877
    .local v4, "continueToken":Ljava/lang/String;
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 880
    .local v9, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v14

    .line 882
    .local v14, "response":I
    if-eqz v14, :cond_1

    .line 942
    .end local v9    # "ownedItems":Landroid/os/Bundle;
    .end local v14    # "response":I
    :goto_0
    return v14

    .line 886
    .restart local v9    # "ownedItems":Landroid/os/Bundle;
    .restart local v14    # "response":I
    :cond_1
    const-string v19, "INAPP_PURCHASE_ITEM_LIST"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "INAPP_PURCHASE_DATA_LIST"

    .line 887
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "INAPP_DATA_SIGNATURE_LIST"

    .line 888
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 890
    :cond_2
    const/16 v14, -0x3ea

    goto :goto_0

    .line 893
    :cond_3
    const-string v19, "INAPP_PURCHASE_ITEM_LIST"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 895
    .local v10, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v19, "INAPP_PURCHASE_DATA_LIST"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 897
    .local v13, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v19, "INAPP_DATA_SIGNATURE_LIST"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 900
    .local v16, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_6

    .line 901
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 902
    .local v12, "purchaseData":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 903
    .local v15, "signature":Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 904
    .local v17, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v12, v15}, Lcom/android/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 906
    new-instance v11, Lcom/android/util/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v12, v15}, Lcom/android/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    .local v11, "purchase":Lcom/android/util/Purchase;
    invoke-virtual {v11}, Lcom/android/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 914
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/util/Inventory;->addPurchase(Lcom/android/util/Purchase;)V

    .line 900
    .end local v11    # "purchase":Lcom/android/util/Purchase;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 920
    :cond_5
    const/16 v18, 0x1

    goto :goto_2

    .line 924
    .end local v12    # "purchaseData":Ljava/lang/String;
    .end local v15    # "signature":Ljava/lang/String;
    .end local v17    # "sku":Ljava/lang/String;
    :cond_6
    const-string v19, "INAPP_CONTINUATION_TOKEN"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 940
    .end local v7    # "i":I
    .end local v9    # "ownedItems":Landroid/os/Bundle;
    .end local v10    # "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "response":I
    .end local v16    # "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 942
    if-eqz v18, :cond_8

    const/16 v19, -0x3eb

    :goto_4
    move/from16 v14, v19

    goto/16 :goto_0

    .line 926
    :catch_0
    move-exception v5

    .line 928
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 929
    const-string v19, "IAB Failure QP001: %s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 930
    .local v8, "msg":Ljava/lang/String;
    const-string v19, "IAB"

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 933
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 938
    :cond_7
    :goto_5
    const/16 v18, 0x1

    goto :goto_3

    .line 934
    :catch_1
    move-exception v6

    .line 935
    .local v6, "e1":Ljava/lang/Exception;
    const-string v19, "IAB"

    const-string v20, "Failed to toast error occuring in queryPurchases: %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 942
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "e1":Ljava/lang/Exception;
    .end local v8    # "msg":Ljava/lang/String;
    :cond_8
    const/16 v19, 0x0

    goto :goto_4
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/android/util/Inventory;Ljava/util/List;)I
    .locals 11
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/android/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 948
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v6, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lcom/android/util/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 950
    if-eqz p3, :cond_1

    .line 951
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 952
    .local v4, "sku":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 953
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 958
    .end local v4    # "sku":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 988
    :cond_2
    :goto_1
    return v2

    .line 963
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 964
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string v8, "ITEM_ID_LIST"

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 965
    iget-object v8, p0, Lcom/android/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10, p1, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 968
    .local v5, "skuDetails":Landroid/os/Bundle;
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 969
    invoke-virtual {p0, v5}, Lcom/android/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 970
    .local v2, "response":I
    if-nez v2, :cond_2

    .line 976
    const/16 v2, -0x3ea

    goto :goto_1

    .line 980
    .end local v2    # "response":I
    :cond_4
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 983
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 984
    .local v7, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/android/util/SkuDetails;

    invoke-direct {v0, p1, v7}, Lcom/android/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    .local v0, "d":Lcom/android/util/SkuDetails;
    invoke-virtual {p2, v0}, Lcom/android/util/Inventory;->addSkuDetails(Lcom/android/util/SkuDetails;)V

    goto :goto_2
.end method

.method public startSetup(Lcom/android/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/android/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/util/IabHelper;->checkNotDisposed()V

    .line 213
    iget-boolean v3, p0, Lcom/android/util/IabHelper;->mSetupDone:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "IAB helper is already set up."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_0
    new-instance v3, Lcom/android/util/IabHelper$1;

    invoke-direct {v3, p0, p1}, Lcom/android/util/IabHelper$1;-><init>(Lcom/android/util/IabHelper;Lcom/android/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v3, p0, Lcom/android/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 276
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, "serviceIntent":Landroid/content/Intent;
    const-string v3, "com.android.vending"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v3, p0, Lcom/android/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 280
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 282
    .local v0, "intentServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 284
    iget-object v3, p0, Lcom/android/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    if-eqz p1, :cond_1

    .line 291
    new-instance v3, Lcom/android/util/IabResult;

    const/4 v4, 0x3

    const-string v5, "Billing service unavailable on device."

    invoke-direct {v3, v4, v5}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v3}, Lcom/android/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/android/util/IabResult;)V

    goto :goto_0
.end method
