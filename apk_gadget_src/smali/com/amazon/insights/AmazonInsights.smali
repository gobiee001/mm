.class public abstract Lcom/amazon/insights/AmazonInsights;
.super Ljava/lang/Object;
.source "AmazonInsights.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;
    }
.end annotation


# static fields
.field private static final DISABLED_AMAZON_INSIGHTS:Lcom/amazon/insights/impl/DisabledAmazonInsights;

.field private static final SDK_NAME:Ljava/lang/String; = "AmazonInsightsSDK"

.field private static final SDK_VERSION:Ljava/lang/String; = "2.1.26.0"

.field private static final accessNetworkStatePermissionValidator:Lcom/amazon/insights/validate/PermissionValidator;

.field private static final aesEncryptionValidator:Lcom/amazon/insights/validate/EncryptionValidator;

.field private static final encodingValidator:Lcom/amazon/insights/validate/EncodingValidator;

.field private static final fileManagerValidator:Lcom/amazon/insights/validate/FileManagerValidator;

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/insights/InsightsCredentials;",
            "Lcom/amazon/insights/AmazonInsights;",
            ">;"
        }
    .end annotation
.end field

.field private static final internetPermissionValidator:Lcom/amazon/insights/validate/PermissionValidator;

.field private static final logger:Lcom/amazon/insights/core/log/Logger;

.field private static final sdkInfo:Lcom/amazon/insights/core/util/SDKInfo;

.field private static final sha256Validator:Lcom/amazon/insights/validate/SHA256Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/amazon/insights/core/util/SDKInfo;

    const-string v1, "AmazonInsightsSDK"

    const-string v2, "2.1.26.0"

    invoke-direct {v0, v1, v2}, Lcom/amazon/insights/core/util/SDKInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/insights/AmazonInsights;->sdkInfo:Lcom/amazon/insights/core/util/SDKInfo;

    .line 131
    const-class v0, Lcom/amazon/insights/AmazonInsights;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/AmazonInsights;->logger:Lcom/amazon/insights/core/log/Logger;

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/insights/AmazonInsights;->instances:Ljava/util/Map;

    .line 134
    new-instance v0, Lcom/amazon/insights/validate/PermissionValidator;

    const-string v1, "android.permission.INTERNET"

    invoke-direct {v0, v1}, Lcom/amazon/insights/validate/PermissionValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/insights/AmazonInsights;->internetPermissionValidator:Lcom/amazon/insights/validate/PermissionValidator;

    .line 135
    new-instance v0, Lcom/amazon/insights/validate/PermissionValidator;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {v0, v1}, Lcom/amazon/insights/validate/PermissionValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/insights/AmazonInsights;->accessNetworkStatePermissionValidator:Lcom/amazon/insights/validate/PermissionValidator;

    .line 137
    new-instance v0, Lcom/amazon/insights/validate/EncodingValidator;

    const-string v1, "UTF-8"

    invoke-direct {v0, v1}, Lcom/amazon/insights/validate/EncodingValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/insights/AmazonInsights;->encodingValidator:Lcom/amazon/insights/validate/EncodingValidator;

    .line 138
    new-instance v0, Lcom/amazon/insights/validate/SHA256Validator;

    invoke-direct {v0}, Lcom/amazon/insights/validate/SHA256Validator;-><init>()V

    sput-object v0, Lcom/amazon/insights/AmazonInsights;->sha256Validator:Lcom/amazon/insights/validate/SHA256Validator;

    .line 139
    new-instance v0, Lcom/amazon/insights/validate/EncryptionValidator;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEF"

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Lcom/amazon/insights/validate/EncryptionValidator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/insights/AmazonInsights;->aesEncryptionValidator:Lcom/amazon/insights/validate/EncryptionValidator;

    .line 140
    new-instance v0, Lcom/amazon/insights/validate/FileManagerValidator;

    invoke-direct {v0}, Lcom/amazon/insights/validate/FileManagerValidator;-><init>()V

    sput-object v0, Lcom/amazon/insights/AmazonInsights;->fileManagerValidator:Lcom/amazon/insights/validate/FileManagerValidator;

    .line 142
    new-instance v0, Lcom/amazon/insights/impl/DisabledAmazonInsights;

    invoke-direct {v0}, Lcom/amazon/insights/impl/DisabledAmazonInsights;-><init>()V

    sput-object v0, Lcom/amazon/insights/AmazonInsights;->DISABLED_AMAZON_INSIGHTS:Lcom/amazon/insights/impl/DisabledAmazonInsights;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method static synthetic access$000()Lcom/amazon/insights/core/log/Logger;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/amazon/insights/AmazonInsights;->logger:Lcom/amazon/insights/core/log/Logger;

    return-object v0
.end method

.method static synthetic access$100()Lcom/amazon/insights/validate/EncodingValidator;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/amazon/insights/AmazonInsights;->encodingValidator:Lcom/amazon/insights/validate/EncodingValidator;

    return-object v0
.end method

.method static synthetic access$200()Lcom/amazon/insights/validate/SHA256Validator;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/amazon/insights/AmazonInsights;->sha256Validator:Lcom/amazon/insights/validate/SHA256Validator;

    return-object v0
.end method

.method static synthetic access$300()Lcom/amazon/insights/validate/EncryptionValidator;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/amazon/insights/AmazonInsights;->aesEncryptionValidator:Lcom/amazon/insights/validate/EncryptionValidator;

    return-object v0
.end method

.method static synthetic access$400()Lcom/amazon/insights/validate/FileManagerValidator;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/amazon/insights/AmazonInsights;->fileManagerValidator:Lcom/amazon/insights/validate/FileManagerValidator;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/amazon/insights/InsightsCredentials;)Lcom/amazon/insights/AmazonInsights;
    .locals 3
    .param p0, "credentials"    # Lcom/amazon/insights/InsightsCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 189
    const-class v1, Lcom/amazon/insights/AmazonInsights;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazon/insights/AmazonInsights;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/amazon/insights/AmazonInsights;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/AmazonInsights;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 192
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "There was not an AmazonInsights instance registered for the credentials provided. Make sure you call newInstance before trying to retrieve the instance via getInstance"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getSDKInfo()Lcom/amazon/insights/core/util/SDKInfo;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/amazon/insights/AmazonInsights;->sdkInfo:Lcom/amazon/insights/core/util/SDKInfo;

    return-object v0
.end method

.method public static newCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/InsightsCredentials;
    .locals 1
    .param p0, "applicationKey"    # Ljava/lang/String;
    .param p1, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, "The application key provided must not be null"

    invoke-static {p0, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "The private key provided must not be null"

    invoke-static {p1, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/amazon/insights/impl/DefaultInsightsCredentials;

    invoke-direct {v0, p0, p1}, Lcom/amazon/insights/impl/DefaultInsightsCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newDefaultOptions()Lcom/amazon/insights/InsightsOptions;
    .locals 3

    .prologue
    .line 166
    new-instance v0, Lcom/amazon/insights/impl/DefaultInsightsOptions;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/insights/impl/DefaultInsightsOptions;-><init>(ZZ)V

    return-object v0
.end method

.method static newInsightsContext(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;)Lcom/amazon/insights/core/InsightsContext;
    .locals 1
    .param p0, "credentials"    # Lcom/amazon/insights/InsightsCredentials;
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/amazon/insights/AmazonInsights;->newInsightsContext(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Ljava/util/Map;)Lcom/amazon/insights/core/InsightsContext;

    move-result-object v0

    return-object v0
.end method

.method static newInsightsContext(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Ljava/util/Map;)Lcom/amazon/insights/core/InsightsContext;
    .locals 2
    .param p0, "credentials"    # Lcom/amazon/insights/InsightsCredentials;
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/insights/InsightsCredentials;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/insights/core/InsightsContext;"
        }
    .end annotation

    .prologue
    .line 305
    .local p2, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/amazon/insights/AmazonInsights;->sdkInfo:Lcom/amazon/insights/core/util/SDKInfo;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/amazon/insights/core/DefaultInsightsContext;->newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/core/util/SDKInfo;ZLjava/util/Map;)Lcom/amazon/insights/core/InsightsContext;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;)Lcom/amazon/insights/AmazonInsights;
    .locals 3
    .param p0, "credentials"    # Lcom/amazon/insights/InsightsCredentials;
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 206
    const-class v1, Lcom/amazon/insights/AmazonInsights;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/amazon/insights/AmazonInsights;->newDefaultOptions()Lcom/amazon/insights/InsightsOptions;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2}, Lcom/amazon/insights/AmazonInsights;->newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/InsightsOptions;Lcom/amazon/insights/InsightsCallback;)Lcom/amazon/insights/AmazonInsights;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/InsightsCallback;)Lcom/amazon/insights/AmazonInsights;
    .locals 2
    .param p0, "credentials"    # Lcom/amazon/insights/InsightsCredentials;
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/insights/InsightsCredentials;",
            "Landroid/content/Context;",
            "Lcom/amazon/insights/InsightsCallback",
            "<",
            "Lcom/amazon/insights/AmazonInsights;",
            ">;)",
            "Lcom/amazon/insights/AmazonInsights;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 219
    .local p2, "initCompletionCallback":Lcom/amazon/insights/InsightsCallback;, "Lcom/amazon/insights/InsightsCallback<Lcom/amazon/insights/AmazonInsights;>;"
    const-class v1, Lcom/amazon/insights/AmazonInsights;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/amazon/insights/AmazonInsights;->newDefaultOptions()Lcom/amazon/insights/InsightsOptions;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/amazon/insights/AmazonInsights;->newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/InsightsOptions;Lcom/amazon/insights/InsightsCallback;)Lcom/amazon/insights/AmazonInsights;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/InsightsOptions;)Lcom/amazon/insights/AmazonInsights;
    .locals 3
    .param p0, "credentials"    # Lcom/amazon/insights/InsightsCredentials;
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "options"    # Lcom/amazon/insights/InsightsOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 232
    const-class v1, Lcom/amazon/insights/AmazonInsights;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v0, v2}, Lcom/amazon/insights/AmazonInsights;->newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/InsightsOptions;Ljava/util/Map;Lcom/amazon/insights/InsightsCallback;)Lcom/amazon/insights/AmazonInsights;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/InsightsOptions;Lcom/amazon/insights/InsightsCallback;)Lcom/amazon/insights/AmazonInsights;
    .locals 2
    .param p0, "credentials"    # Lcom/amazon/insights/InsightsCredentials;
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "options"    # Lcom/amazon/insights/InsightsOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/insights/InsightsCredentials;",
            "Landroid/content/Context;",
            "Lcom/amazon/insights/InsightsOptions;",
            "Lcom/amazon/insights/InsightsCallback",
            "<",
            "Lcom/amazon/insights/AmazonInsights;",
            ">;)",
            "Lcom/amazon/insights/AmazonInsights;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 246
    .local p3, "initCompletionCallback":Lcom/amazon/insights/InsightsCallback;, "Lcom/amazon/insights/InsightsCallback<Lcom/amazon/insights/AmazonInsights;>;"
    const-class v1, Lcom/amazon/insights/AmazonInsights;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/amazon/insights/AmazonInsights;->newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/InsightsOptions;Ljava/util/Map;Lcom/amazon/insights/InsightsCallback;)Lcom/amazon/insights/AmazonInsights;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/InsightsOptions;Ljava/util/Map;Lcom/amazon/insights/InsightsCallback;)Lcom/amazon/insights/AmazonInsights;
    .locals 5
    .param p0, "credentials"    # Lcom/amazon/insights/InsightsCredentials;
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "options"    # Lcom/amazon/insights/InsightsOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/insights/InsightsCredentials;",
            "Landroid/content/Context;",
            "Lcom/amazon/insights/InsightsOptions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/insights/InsightsCallback",
            "<",
            "Lcom/amazon/insights/AmazonInsights;",
            ">;)",
            "Lcom/amazon/insights/AmazonInsights;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 251
    .local p3, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "initCompletionCallback":Lcom/amazon/insights/InsightsCallback;, "Lcom/amazon/insights/InsightsCallback<Lcom/amazon/insights/AmazonInsights;>;"
    const-class v3, Lcom/amazon/insights/AmazonInsights;

    monitor-enter v3

    :try_start_0
    const-string v2, "The credentials provided must not be null"

    invoke-static {p0, v2}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v2, "The application context provided must not be null"

    invoke-static {p1, v2}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v2, "The options provided must not be null"

    invoke-static {p2, v2}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v2, Lcom/amazon/insights/AmazonInsights;->instances:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    sget-object v2, Lcom/amazon/insights/AmazonInsights;->instances:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/insights/AmazonInsights;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :goto_0
    monitor-exit v3

    return-object v2

    .line 261
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/insights/core/log/Logger;->tryInitialize()V

    .line 262
    sget-object v2, Lcom/amazon/insights/AmazonInsights;->internetPermissionValidator:Lcom/amazon/insights/validate/PermissionValidator;

    invoke-virtual {v2, p1}, Lcom/amazon/insights/validate/PermissionValidator;->validate(Landroid/content/Context;)V

    .line 263
    sget-object v2, Lcom/amazon/insights/AmazonInsights;->accessNetworkStatePermissionValidator:Lcom/amazon/insights/validate/PermissionValidator;

    invoke-virtual {v2, p1}, Lcom/amazon/insights/validate/PermissionValidator;->validate(Landroid/content/Context;)V

    .line 264
    sget-object v2, Lcom/amazon/insights/AmazonInsights;->sdkInfo:Lcom/amazon/insights/core/util/SDKInfo;

    invoke-interface {p2}, Lcom/amazon/insights/InsightsOptions;->getAllowWANDelivery()Z

    move-result v4

    invoke-static {p0, p1, v2, v4, p3}, Lcom/amazon/insights/core/DefaultInsightsContext;->newInstance(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/core/util/SDKInfo;ZLjava/util/Map;)Lcom/amazon/insights/core/InsightsContext;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 270
    .local v1, "insightsContext":Lcom/amazon/insights/core/InsightsContext;
    :try_start_2
    invoke-static {v1, p2, p4}, Lcom/amazon/insights/AmazonInsights;->newInstance(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/InsightsOptions;Lcom/amazon/insights/InsightsCallback;)Lcom/amazon/insights/AmazonInsights;

    move-result-object v2

    goto :goto_0

    .line 265
    .end local v1    # "insightsContext":Lcom/amazon/insights/core/InsightsContext;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/amazon/insights/AmazonInsights;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v4, "Error occurred while trying to initialize Insights Context"

    invoke-virtual {v2, v4, v0}, Lcom/amazon/insights/core/log/Logger;->deve(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    new-instance v2, Lcom/amazon/insights/impl/DisabledAmazonInsights;

    invoke-direct {v2}, Lcom/amazon/insights/impl/DisabledAmazonInsights;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static declared-synchronized newInstance(Lcom/amazon/insights/core/InsightsContext;)Lcom/amazon/insights/AmazonInsights;
    .locals 2
    .param p0, "context"    # Lcom/amazon/insights/core/InsightsContext;

    .prologue
    .line 275
    const-class v1, Lcom/amazon/insights/AmazonInsights;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/amazon/insights/AmazonInsights;->newDefaultOptions()Lcom/amazon/insights/InsightsOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/insights/AmazonInsights;->newInstance(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/InsightsOptions;)Lcom/amazon/insights/AmazonInsights;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized newInstance(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/InsightsOptions;)Lcom/amazon/insights/AmazonInsights;
    .locals 2
    .param p0, "context"    # Lcom/amazon/insights/core/InsightsContext;
    .param p1, "options"    # Lcom/amazon/insights/InsightsOptions;

    .prologue
    .line 279
    const-class v0, Lcom/amazon/insights/AmazonInsights;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amazon/insights/AmazonInsights;->newInstance(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/InsightsOptions;Lcom/amazon/insights/InsightsCallback;)Lcom/amazon/insights/AmazonInsights;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized newInstance(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/InsightsOptions;Lcom/amazon/insights/InsightsCallback;)Lcom/amazon/insights/AmazonInsights;
    .locals 5
    .param p0, "context"    # Lcom/amazon/insights/core/InsightsContext;
    .param p1, "options"    # Lcom/amazon/insights/InsightsOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/insights/core/InsightsContext;",
            "Lcom/amazon/insights/InsightsOptions;",
            "Lcom/amazon/insights/InsightsCallback",
            "<",
            "Lcom/amazon/insights/AmazonInsights;",
            ">;)",
            "Lcom/amazon/insights/AmazonInsights;"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, "initCompletionCallback":Lcom/amazon/insights/InsightsCallback;, "Lcom/amazon/insights/InsightsCallback<Lcom/amazon/insights/AmazonInsights;>;"
    const-class v3, Lcom/amazon/insights/AmazonInsights;

    monitor-enter v3

    :try_start_0
    const-string v2, "The context provided must not be null"

    invoke-static {p0, v2}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v2, Lcom/amazon/insights/AmazonInsights;->instances:Ljava/util/Map;

    invoke-interface {p0}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    sget-object v2, Lcom/amazon/insights/AmazonInsights;->instances:Ljava/util/Map;

    invoke-interface {p0}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/insights/AmazonInsights;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :goto_0
    monitor-exit v3

    return-object v2

    .line 291
    :cond_0
    :try_start_1
    new-instance v1, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;-><init>(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/InsightsOptions;Lcom/amazon/insights/InsightsCallback;)V
    :try_end_1
    .catch Lcom/amazon/insights/impl/InitializationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .local v1, "instance":Lcom/amazon/insights/AmazonInsights;
    :goto_1
    :try_start_2
    sget-object v2, Lcom/amazon/insights/AmazonInsights;->instances:Ljava/util/Map;

    invoke-interface {p0}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 297
    goto :goto_0

    .line 292
    .end local v1    # "instance":Lcom/amazon/insights/AmazonInsights;
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Lcom/amazon/insights/impl/InitializationException;
    sget-object v1, Lcom/amazon/insights/AmazonInsights;->DISABLED_AMAZON_INSIGHTS:Lcom/amazon/insights/impl/DisabledAmazonInsights;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v1    # "instance":Lcom/amazon/insights/AmazonInsights;
    goto :goto_1

    .line 283
    .end local v0    # "e":Lcom/amazon/insights/impl/InitializationException;
    .end local v1    # "instance":Lcom/amazon/insights/AmazonInsights;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static newOptions(ZZ)Lcom/amazon/insights/InsightsOptions;
    .locals 1
    .param p0, "allowEventCollection"    # Z
    .param p1, "allowWANDelivery"    # Z

    .prologue
    .line 179
    new-instance v0, Lcom/amazon/insights/impl/DefaultInsightsOptions;

    invoke-direct {v0, p0, p1}, Lcom/amazon/insights/impl/DefaultInsightsOptions;-><init>(ZZ)V

    return-object v0
.end method


# virtual methods
.method public abstract getABTestClient()Lcom/amazon/insights/ABTestClient;
.end method

.method public abstract getEventClient()Lcom/amazon/insights/EventClient;
.end method

.method public abstract getSessionClient()Lcom/amazon/insights/SessionClient;
.end method

.method public abstract getUserProfile()Lcom/amazon/insights/UserProfile;
.end method
