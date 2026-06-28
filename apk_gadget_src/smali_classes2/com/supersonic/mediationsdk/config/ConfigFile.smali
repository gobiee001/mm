.class public Lcom/supersonic/mediationsdk/config/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# static fields
.field private static mInstance:Lcom/supersonic/mediationsdk/config/ConfigFile;


# instance fields
.field private mPluginFrameworkVersion:Ljava/lang/String;

.field private mPluginType:Ljava/lang/String;

.field private mPluginVersion:Ljava/lang/String;

.field private mSupportedPlugins:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AdobeAir"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Xamarin"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Corona"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AdMob"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MoPub"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mSupportedPlugins:[Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;
    .locals 2

    .prologue
    .line 14
    const-class v1, Lcom/supersonic/mediationsdk/config/ConfigFile;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mInstance:Lcom/supersonic/mediationsdk/config/ConfigFile;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/supersonic/mediationsdk/config/ConfigFile;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/config/ConfigFile;-><init>()V

    sput-object v0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mInstance:Lcom/supersonic/mediationsdk/config/ConfigFile;

    .line 17
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mInstance:Lcom/supersonic/mediationsdk/config/ConfigFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPluginFrameworkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mPluginFrameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mPluginType:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mPluginVersion:Ljava/lang/String;

    return-object v0
.end method
