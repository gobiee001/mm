.class Lcom/amazon/device/ads/IntentBuilder;
.super Ljava/lang/Object;
.source "IntentBuilder.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private extras:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/IntentBuilder;->extras:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public fireIntent()Z
    .locals 6

    .prologue
    .line 66
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/amazon/device/ads/IntentBuilder;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/amazon/device/ads/IntentBuilder;->clazz:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/amazon/device/ads/IntentBuilder;->extras:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 73
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v4, 0x0

    .line 77
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return v4

    .line 71
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/amazon/device/ads/IntentBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public withActivity(Landroid/app/Activity;)Lcom/amazon/device/ads/IntentBuilder;
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/amazon/device/ads/IntentBuilder;->activity:Landroid/app/Activity;

    .line 41
    return-object p0
.end method

.method public withClass(Ljava/lang/Class;)Lcom/amazon/device/ads/IntentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/amazon/device/ads/IntentBuilder;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/amazon/device/ads/IntentBuilder;->clazz:Ljava/lang/Class;

    .line 50
    return-object p0
.end method

.method public withContext(Landroid/content/Context;)Lcom/amazon/device/ads/IntentBuilder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amazon/device/ads/IntentBuilder;->context:Landroid/content/Context;

    .line 32
    return-object p0
.end method

.method public withExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/IntentBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/device/ads/IntentBuilder;->extras:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object p0
.end method
