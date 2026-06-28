.class public Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;
.super Ljava/lang/Object;
.source "ProviderSettingsHolder.java"


# static fields
.field private static mInstance:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;


# instance fields
.field private mProviderSettingsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/model/ProviderSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method public static declared-synchronized getProviderSettingsHolder()Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;
    .locals 2

    .prologue
    .line 15
    const-class v1, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->mInstance:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;-><init>()V

    sput-object v0, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->mInstance:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    .line 18
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->mInstance:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addProviderSettings(Lcom/supersonic/mediationsdk/model/ProviderSettings;)V
    .locals 1
    .param p1, "providerSettings"    # Lcom/supersonic/mediationsdk/model/ProviderSettings;

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    return-void
.end method

.method public containsProviderSettings(Ljava/lang/String;)Z
    .locals 3
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v2, p0, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/model/ProviderSettings;

    .line 44
    .local v1, "providerSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/4 v2, 0x1

    .line 48
    .end local v1    # "providerSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProviderSettings(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/ProviderSettings;
    .locals 4
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v3, p0, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->mProviderSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/model/ProviderSettings;

    .line 32
    .local v1, "providerSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    .end local v1    # "providerSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    :goto_0
    return-object v1

    .line 36
    :cond_1
    new-instance v2, Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-direct {v2, p1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, "ps":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    invoke-virtual {p0, v2}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/supersonic/mediationsdk/model/ProviderSettings;)V

    move-object v1, v2

    .line 39
    goto :goto_0
.end method
