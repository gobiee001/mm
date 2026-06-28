.class public Lcom/amazon/iap/util/DA2PurchasingListener;
.super Ljava/lang/Object;
.source "DA2PurchasingListener.java"

# interfaces
.implements Lcom/amazon/device/iap/PurchasingListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Da2PurchasingListener"


# instance fields
.field private currentMarketplace:Ljava/lang/String;

.field private currentUserId:Ljava/lang/String;

.field private final iapManager:Lcom/amazon/iap/util/DA2IapManager;


# direct methods
.method public constructor <init>(Lcom/amazon/iap/util/DA2IapManager;)V
    .locals 1
    .param p1, "iapManager"    # Lcom/amazon/iap/util/DA2IapManager;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->currentUserId:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->currentMarketplace:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    .line 35
    return-void
.end method


# virtual methods
.method public onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/amazon/device/iap/model/ProductDataResponse;

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v0

    .line 92
    .local v0, "status":Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;
    sget-object v2, Lcom/amazon/iap/util/DA2PurchasingListener$1;->$SwitchMap$com$amazon$device$iap$model$ProductDataResponse$RequestStatus:[I

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 95
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v1

    .line 97
    .local v1, "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/iap/util/DA2IapManager;->enablePurchaseForSkus(Ljava/util/Map;)V

    .line 98
    iget-object v2, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/iap/util/DA2IapManager;->disablePurchaseForSkus(Ljava/util/Set;)V

    .line 99
    iget-object v2, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v2}, Lcom/amazon/iap/util/DA2IapManager;->refreshProductAvailability()V

    goto :goto_0

    .line 105
    .end local v1    # "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v2, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v2}, Lcom/amazon/iap/util/DA2IapManager;->disableAllPurchases()V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/amazon/device/iap/model/PurchaseResponse;

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "requestId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "userId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v2

    .line 199
    .local v2, "status":Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appsomniacs/da2/DA2Activity;->nativeSetIdentity(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v5, Lcom/amazon/iap/util/DA2PurchasingListener$1;->$SwitchMap$com$amazon$device$iap$model$PurchaseResponse$RequestStatus:[I

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 223
    :goto_0
    :pswitch_0
    return-void

    .line 202
    :pswitch_1
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v0

    .line 203
    .local v0, "receipt":Lcom/amazon/device/iap/model/Receipt;
    iget-object v5, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/amazon/iap/util/DA2IapManager;->setAmazonUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v5, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v7

    invoke-virtual {v5, v6, v0, v7}, Lcom/amazon/iap/util/DA2IapManager;->handleReceipt(Ljava/lang/String;Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V

    .line 206
    iget-object v5, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v5}, Lcom/amazon/iap/util/DA2IapManager;->refreshProductAvailability()V

    goto :goto_0

    .line 213
    .end local v0    # "receipt":Lcom/amazon/device/iap/model/Receipt;
    :pswitch_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 214
    .local v3, "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v5, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v5, v3}, Lcom/amazon/iap/util/DA2IapManager;->disablePurchaseForSkus(Ljava/util/Set;)V

    goto :goto_0

    .line 220
    .end local v3    # "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_3
    iget-object v5, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/iap/util/DA2IapManager;->purchaseFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v3

    .line 127
    .local v3, "status":Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;
    sget-object v5, Lcom/amazon/iap/util/DA2PurchasingListener$1;->$SwitchMap$com$amazon$device$iap$model$PurchaseUpdatesResponse$RequestStatus:[I

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "userId":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 132
    :cond_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeGetClaimedIdentity()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "claimedUserId":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 134
    move-object v4, v1

    .line 152
    .end local v1    # "claimedUserId":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 154
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/iap/model/Receipt;

    .line 155
    .local v2, "receipt":Lcom/amazon/device/iap/model/Receipt;
    iget-object v6, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v8

    invoke-virtual {v6, v7, v2, v8}, Lcom/amazon/iap/util/DA2IapManager;->handleReceipt(Ljava/lang/String;Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V

    goto :goto_2

    .line 137
    .end local v2    # "receipt":Lcom/amazon/device/iap/model/Receipt;
    .restart local v1    # "claimedUserId":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v5}, Lcom/amazon/iap/util/DA2IapManager;->disableAllPurchases()V

    goto :goto_0

    .line 142
    .end local v1    # "claimedUserId":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeGetClaimedIdentity()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "claimedId":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 146
    :cond_4
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appsomniacs/da2/DA2Activity;->nativeSetIdentity(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v5, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/amazon/iap/util/DA2IapManager;->setAmazonUserId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    .end local v0    # "claimedId":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->hasMore()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 158
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    .line 160
    :cond_6
    iget-object v5, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v5}, Lcom/amazon/iap/util/DA2IapManager;->refreshProductAvailability()V

    goto/16 :goto_0

    .line 164
    :cond_7
    iget-object v5, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v5}, Lcom/amazon/iap/util/DA2IapManager;->disableAllPurchases()V

    .line 169
    .end local v4    # "userId":Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v5}, Lcom/amazon/iap/util/DA2IapManager;->disableAllPurchases()V

    goto/16 :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/amazon/device/iap/model/UserDataResponse;

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;

    move-result-object v0

    .line 55
    .local v0, "status":Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;
    sget-object v2, Lcom/amazon/iap/util/DA2PurchasingListener$1;->$SwitchMap$com$amazon$device$iap$model$UserDataResponse$RequestStatus:[I

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "userId":Ljava/lang/String;
    iput-object v1, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->currentUserId:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->currentMarketplace:Ljava/lang/String;

    .line 60
    invoke-static {v1}, Lcom/appsomniacs/da2/DA2Activity;->setIdentity(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/iap/util/DA2IapManager;->setAmazonUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->verifyInventory()V

    goto :goto_0

    .line 74
    .end local v1    # "userId":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/amazon/iap/util/DA2PurchasingListener;->iapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v2, v4, v4}, Lcom/amazon/iap/util/DA2IapManager;->setAmazonUserId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
