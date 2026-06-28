.class Lcom/appsomniacs/da2/DA2Activity$28;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/android/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsomniacs/da2/DA2Activity;
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
    .line 4096
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$28;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/android/util/IabResult;Lcom/android/util/Inventory;)V
    .locals 11
    .param p1, "result"    # Lcom/android/util/IabResult;
    .param p2, "inventory"    # Lcom/android/util/Inventory;

    .prologue
    .line 4102
    :try_start_0
    iget-object v8, p0, Lcom/appsomniacs/da2/DA2Activity$28;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v8}, Lcom/appsomniacs/da2/DA2Activity;->access$2900(Lcom/appsomniacs/da2/DA2Activity;)Lcom/android/util/IabHelper;

    move-result-object v8

    if-nez v8, :cond_0

    .line 4103
    const-string v8, " Upon inventory query completion the IAB system was destroyed."

    invoke-static {v8}, Lcom/appsomniacs/da2/DA2Activity;->access$3102(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4171
    iget-object v8, p0, Lcom/appsomniacs/da2/DA2Activity$28;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v8}, Lcom/appsomniacs/da2/DA2Activity;->access$3400(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 4175
    :goto_0
    return-void

    .line 4109
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/util/IabResult;->isFailure()Z

    move-result v8

    if-nez v8, :cond_1

    if-nez p2, :cond_2

    .line 4110
    :cond_1
    iget-object v8, p0, Lcom/appsomniacs/da2/DA2Activity$28;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to query purchased inventory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    .line 4111
    const-string v8, "Inventory request failed."

    invoke-static {v8}, Lcom/appsomniacs/da2/DA2Activity;->access$3102(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4171
    iget-object v8, p0, Lcom/appsomniacs/da2/DA2Activity$28;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v8}, Lcom/appsomniacs/da2/DA2Activity;->access$3400(Lcom/appsomniacs/da2/DA2Activity;)V

    goto :goto_0

    .line 4121
    :cond_2
    :try_start_2
    iget-object v8, p0, Lcom/appsomniacs/da2/DA2Activity$28;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v8}, Lcom/appsomniacs/da2/DA2Activity;->access$2800(Lcom/appsomniacs/da2/DA2Activity;)Ljava/util/List;

    move-result-object v7

    .line 4127
    .local v7, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4128
    .local v6, "sku":Ljava/lang/String;
    invoke-virtual {p2, v6}, Lcom/android/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/util/Purchase;

    move-result-object v4

    .line 4130
    .local v4, "purchase":Lcom/android/util/Purchase;
    if-eqz v4, :cond_3

    .line 4133
    invoke-virtual {v4}, Lcom/android/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    .line 4134
    .local v2, "originalJson":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v5

    .line 4135
    .local v5, "signature":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 4137
    .local v3, "productSku":Ljava/lang/String;
    move-object v0, v2

    .line 4138
    .local v0, "finalOriginalJson":Ljava/lang/String;
    move-object v1, v5

    .line 4140
    .local v1, "finalSignature":Ljava/lang/String;
    iget-object v9, p0, Lcom/appsomniacs/da2/DA2Activity$28;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v9}, Lcom/appsomniacs/da2/DA2Activity;->access$3200(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 4141
    invoke-static {v0, v1, v3}, Lcom/appsomniacs/da2/DA2Activity;->access$3300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4171
    .end local v0    # "finalOriginalJson":Ljava/lang/String;
    .end local v1    # "finalSignature":Ljava/lang/String;
    .end local v2    # "originalJson":Ljava/lang/String;
    .end local v3    # "productSku":Ljava/lang/String;
    .end local v4    # "purchase":Lcom/android/util/Purchase;
    .end local v5    # "signature":Ljava/lang/String;
    .end local v6    # "sku":Ljava/lang/String;
    .end local v7    # "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/appsomniacs/da2/DA2Activity$28;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v9}, Lcom/appsomniacs/da2/DA2Activity;->access$3400(Lcom/appsomniacs/da2/DA2Activity;)V

    throw v8

    .restart local v7    # "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v8, p0, Lcom/appsomniacs/da2/DA2Activity$28;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v8}, Lcom/appsomniacs/da2/DA2Activity;->access$3400(Lcom/appsomniacs/da2/DA2Activity;)V

    goto :goto_0
.end method
