.class public Lcom/amazon/iap/util/DA2IapManager;
.super Ljava/lang/Object;
.source "DA2IapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/iap/util/DA2IapManager$EntitlementRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Da2IAPManager"


# instance fields
.field private final mainActivity:Lcom/appsomniacs/da2/DA2Activity;

.field private productAvailable:Z

.field private userIapData:Lcom/amazon/iap/util/UserIapData;


# direct methods
.method public constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "mainActivity"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/amazon/iap/util/DA2IapManager;->mainActivity:Lcom/appsomniacs/da2/DA2Activity;

    .line 79
    return-void
.end method

.method private grantEntitlementPurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    .locals 6
    .param p1, "receipt"    # Lcom/amazon/device/iap/model/Receipt;
    .param p2, "userData"    # Lcom/amazon/device/iap/model/UserData;

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/iap/util/DA2IapManager;->userIapData:Lcom/amazon/iap/util/UserIapData;

    invoke-virtual {v4}, Lcom/amazon/iap/util/UserIapData;->getAmazonMarketplace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/iap/util/DA2Sku;->fromSku(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/iap/util/DA2Sku;

    move-result-object v2

    .line 239
    .local v2, "receiptSku":Lcom/amazon/iap/util/DA2Sku;
    sget-object v3, Lcom/amazon/iap/util/DA2Sku;->PROPACK:Lcom/amazon/iap/util/DA2Sku;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK1:Lcom/amazon/iap/util/DA2Sku;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK2:Lcom/amazon/iap/util/DA2Sku;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK3:Lcom/amazon/iap/util/DA2Sku;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK4:Lcom/amazon/iap/util/DA2Sku;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 244
    .local v1, "matchesExpectedSku":Z
    :goto_0
    if-nez v1, :cond_2

    .line 245
    const-string v3, "Da2IAPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The SKU ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] in the receipt is not valid anymore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/device/iap/model/FulfillmentResult;->UNAVAILABLE:Lcom/amazon/device/iap/model/FulfillmentResult;

    invoke-static {v3, v4}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V

    .line 266
    :goto_1
    return-void

    .line 239
    .end local v1    # "matchesExpectedSku":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 257
    .restart local v1    # "matchesExpectedSku":Z
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/amazon/iap/util/DA2IapManager;->mainActivity:Lcom/appsomniacs/da2/DA2Activity;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    instance-of v5, v3, Lorg/json/JSONObject;

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/appsomniacs/da2/DA2Activity;->registerPurchase(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 261
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "Da2IAPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to grant entitlement purchase, with error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 257
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2
.end method

.method private handleEntitlementPurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    .locals 5
    .param p1, "receipt"    # Lcom/amazon/device/iap/model/Receipt;
    .param p2, "userData"    # Lcom/amazon/device/iap/model/UserData;

    .prologue
    .line 293
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {p2}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/amazon/iap/util/DA2IapManager;->revokeEntitlement(Lcom/amazon/device/iap/model/Receipt;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/amazon/iap/util/DA2IapManager;->verifyReceiptFromYourService(Ljava/lang/String;Lcom/amazon/device/iap/model/UserData;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/amazon/iap/util/DA2IapManager;->mainActivity:Lcom/appsomniacs/da2/DA2Activity;

    const-string v3, "Verification Error"

    const-string v4, "Purchase cannot be verified, please retry later.\nIf the issue persists please contact support@appsomniacs.com"

    invoke-virtual {v2, v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase cannot be completed, please retry.\nError:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "msg":Ljava/lang/String;
    :goto_1
    const-string v2, "Da2IAPManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    iget-object v2, p0, Lcom/amazon/iap/util/DA2IapManager;->mainActivity:Lcom/appsomniacs/da2/DA2Activity;

    const-string v3, "Purchase Error"

    invoke-virtual {v2, v3, v1}, Lcom/appsomniacs/da2/DA2Activity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/iap/util/DA2IapManager;->grantEntitlementPurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 310
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const-string v1, "Undefined Error\"\nIf the issue persists please contact support@appsomniacs.com"

    goto :goto_1
.end method

.method private revokeEntitlement(Lcom/amazon/device/iap/model/Receipt;Ljava/lang/String;)V
    .locals 1
    .param p1, "receipt"    # Lcom/amazon/device/iap/model/Receipt;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "receiptId":Ljava/lang/String;
    return-void
.end method

.method private verifyReceiptFromYourService(Ljava/lang/String;Lcom/amazon/device/iap/model/UserData;)Z
    .locals 1
    .param p1, "receiptId"    # Ljava/lang/String;
    .param p2, "userData"    # Lcom/amazon/device/iap/model/UserData;

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public disableAllPurchases()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/iap/util/DA2IapManager;->productAvailable:Z

    .line 153
    invoke-virtual {p0}, Lcom/amazon/iap/util/DA2IapManager;->refreshProductAvailability()V

    .line 154
    return-void
.end method

.method public disablePurchaseForSkus(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->PROPACK:Lcom/amazon/iap/util/DA2Sku;

    .line 133
    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK1:Lcom/amazon/iap/util/DA2Sku;

    .line 134
    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK2:Lcom/amazon/iap/util/DA2Sku;

    .line 135
    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK3:Lcom/amazon/iap/util/DA2Sku;

    .line 136
    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK4:Lcom/amazon/iap/util/DA2Sku;

    .line 137
    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/iap/util/DA2IapManager;->productAvailable:Z

    .line 143
    iget-object v0, p0, Lcom/amazon/iap/util/DA2IapManager;->mainActivity:Lcom/appsomniacs/da2/DA2Activity;

    const-string v1, "Warning"

    const-string v2, "the product isn\'t available now! "

    invoke-virtual {v0, v1, v2}, Lcom/appsomniacs/da2/DA2Activity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    return-void
.end method

.method public enablePurchaseForSkus(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/iap/model/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "productData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->PROPACK:Lcom/amazon/iap/util/DA2Sku;

    .line 117
    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK1:Lcom/amazon/iap/util/DA2Sku;

    .line 118
    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK2:Lcom/amazon/iap/util/DA2Sku;

    .line 119
    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK3:Lcom/amazon/iap/util/DA2Sku;

    .line 120
    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK4:Lcom/amazon/iap/util/DA2Sku;

    .line 121
    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/iap/util/DA2IapManager;->productAvailable:Z

    .line 124
    :cond_1
    return-void
.end method

.method public getUserIapData()Lcom/amazon/iap/util/UserIapData;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/amazon/iap/util/DA2IapManager;->userIapData:Lcom/amazon/iap/util/UserIapData;

    return-object v0
.end method

.method public handleReceipt(Ljava/lang/String;Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "receipt"    # Lcom/amazon/device/iap/model/Receipt;
    .param p3, "userData"    # Lcom/amazon/device/iap/model/UserData;

    .prologue
    .line 199
    sget-object v0, Lcom/amazon/iap/util/DA2IapManager$1;->$SwitchMap$com$amazon$device$iap$model$ProductType:[I

    invoke-virtual {p2}, Lcom/amazon/device/iap/model/Receipt;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/ProductType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_0
    :pswitch_0
    return-void

    .line 204
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/amazon/iap/util/DA2IapManager;->handleEntitlementPurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public purchaseFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amazon/iap/util/DA2IapManager;->mainActivity:Lcom/appsomniacs/da2/DA2Activity;

    const-string v1, "Warning"

    const-string v2, "Purchase failed!"

    invoke-virtual {v0, v1, v2}, Lcom/appsomniacs/da2/DA2Activity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public refreshProductAvailability()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public setAmazonUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "newAmazonUserId"    # Ljava/lang/String;
    .param p2, "newAmazonMarketplace"    # Ljava/lang/String;

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/amazon/iap/util/DA2IapManager;->userIapData:Lcom/amazon/iap/util/UserIapData;

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/iap/util/DA2IapManager;->userIapData:Lcom/amazon/iap/util/UserIapData;

    .line 96
    invoke-virtual {p0}, Lcom/amazon/iap/util/DA2IapManager;->refreshProductAvailability()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/amazon/iap/util/DA2IapManager;->userIapData:Lcom/amazon/iap/util/UserIapData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/iap/util/DA2IapManager;->userIapData:Lcom/amazon/iap/util/UserIapData;

    invoke-virtual {v0}, Lcom/amazon/iap/util/UserIapData;->getAmazonUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :cond_2
    new-instance v0, Lcom/amazon/iap/util/UserIapData;

    invoke-direct {v0, p1, p2}, Lcom/amazon/iap/util/UserIapData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/iap/util/DA2IapManager;->userIapData:Lcom/amazon/iap/util/UserIapData;

    .line 106
    invoke-virtual {p0}, Lcom/amazon/iap/util/DA2IapManager;->refreshProductAvailability()V

    goto :goto_0
.end method
