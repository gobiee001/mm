.class Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;
.super Ljava/lang/Object;
.source "AdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityAdapterFactory"
.end annotation


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1
    .param p1, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {}, Lcom/amazon/device/ads/AdActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 155
    return-void
.end method


# virtual methods
.method createAdapter(Landroid/content/Intent;)Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 159
    const-string v6, "adapter"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "adapterClassName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 162
    iget-object v6, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "Unable to launch the AdActivity due to an internal error."

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v5

    .line 219
    :goto_0
    return-object v0

    .line 166
    :cond_0
    const/4 v1, 0x0

    .line 169
    .local v1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 177
    const/4 v3, 0x0

    .line 180
    .local v3, "adapterConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x0

    :try_start_1
    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 193
    const/4 v0, 0x0

    .line 196
    .local v0, "adapter":Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;
    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "adapter":Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;
    check-cast v0, Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    .restart local v0    # "adapter":Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;
    goto :goto_0

    .line 171
    .end local v0    # "adapter":Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;
    .end local v3    # "adapterConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v4

    .line 173
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    iget-object v6, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "Unable to get the adapter class."

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v5

    .line 174
    goto :goto_0

    .line 182
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "adapterConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1
    move-exception v4

    .line 184
    .local v4, "e":Ljava/lang/SecurityException;
    iget-object v6, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "Security exception when trying to get the default constructor."

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v5

    .line 185
    goto :goto_0

    .line 187
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v4

    .line 189
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    iget-object v6, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "No default constructor exists for the adapter."

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v5

    .line 190
    goto :goto_0

    .line 198
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v4

    .line 200
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "Illegal arguments given to the default constructor."

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v5

    .line 201
    goto :goto_0

    .line 203
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v4

    .line 205
    .local v4, "e":Ljava/lang/InstantiationException;
    iget-object v6, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "Instantiation exception when instantiating the adapter."

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v5

    .line 206
    goto :goto_0

    .line 208
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v4

    .line 210
    .local v4, "e":Ljava/lang/IllegalAccessException;
    iget-object v6, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "Illegal access exception when instantiating the adapter."

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v5

    .line 211
    goto :goto_0

    .line 213
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v4

    .line 215
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-object v6, p0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "Invocation target exception when instantiating the adapter."

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    move-object v0, v5

    .line 216
    goto :goto_0
.end method
