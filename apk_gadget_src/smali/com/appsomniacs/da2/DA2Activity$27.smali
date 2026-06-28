.class Lcom/appsomniacs/da2/DA2Activity$27;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/android/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->ensureGooglePlayIabIsSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 3957
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$27;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/android/util/IabResult;)V
    .locals 10
    .param p1, "result"    # Lcom/android/util/IabResult;

    .prologue
    const/4 v8, 0x1

    .line 3960
    invoke-virtual {p1}, Lcom/android/util/IabResult;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3963
    iget-object v6, p0, Lcom/appsomniacs/da2/DA2Activity$27;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem setting up in-app billing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    .line 3964
    iget-object v6, p0, Lcom/appsomniacs/da2/DA2Activity$27;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    const-string v7, "Error"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem setting up in-app billing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/appsomniacs/da2/DA2Activity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3965
    iget-object v6, p0, Lcom/appsomniacs/da2/DA2Activity$27;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/appsomniacs/da2/DA2Activity;->m_isGooglePlayIabSetup:Z

    .line 3994
    :goto_0
    return-void

    .line 3971
    :cond_0
    iget-object v6, p0, Lcom/appsomniacs/da2/DA2Activity$27;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v6}, Lcom/appsomniacs/da2/DA2Activity;->access$2800(Lcom/appsomniacs/da2/DA2Activity;)Ljava/util/List;

    move-result-object v5

    .line 3972
    .local v5, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3974
    .local v1, "inv":Lcom/android/util/Inventory;
    :try_start_0
    iget-object v6, p0, Lcom/appsomniacs/da2/DA2Activity$27;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v6}, Lcom/appsomniacs/da2/DA2Activity;->access$2900(Lcom/appsomniacs/da2/DA2Activity;)Lcom/android/util/IabHelper;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Lcom/android/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/android/util/Inventory;

    move-result-object v1

    .line 3975
    if-eqz v1, :cond_3

    .line 3976
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3977
    .local v3, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 3978
    invoke-virtual {v1, v3}, Lcom/android/util/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3979
    invoke-virtual {v1, v3}, Lcom/android/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/android/util/SkuDetails;

    move-result-object v4

    .line 3980
    .local v4, "skuDetails":Lcom/android/util/SkuDetails;
    invoke-virtual {v4}, Lcom/android/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v2

    .line 3981
    .local v2, "price":Ljava/lang/String;
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$3000()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3987
    .end local v2    # "price":Ljava/lang/String;
    .end local v3    # "sku":Ljava/lang/String;
    .end local v4    # "skuDetails":Lcom/android/util/SkuDetails;
    :catch_0
    move-exception v0

    .line 3988
    .local v0, "e":Lcom/android/util/IabException;
    const-string v6, "DA2"

    const-string v7, "Error occurred during inventory query of sku prices"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3989
    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->reportStaticNonFatalException(Ljava/lang/Throwable;)V

    .line 3992
    .end local v0    # "e":Lcom/android/util/IabException;
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/appsomniacs/da2/DA2Activity$27;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    iput-boolean v8, v6, Lcom/appsomniacs/da2/DA2Activity;->m_isGooglePlayIabSetup:Z

    goto :goto_0

    .line 3985
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/appsomniacs/da2/DA2Activity$27;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    const-string v7, "Failed to query inventory. Ensure your network is stable. Some services may be unavailable until resolved."

    invoke-virtual {v6, v7}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/util/IabException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
