.class Lcom/amazon/ags/html5/content/ContentManager$2;
.super Ljava/lang/Object;
.source "ContentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/html5/content/ContentManager;->fullContentInitialization(Ljava/util/concurrent/ExecutorService;Lcom/amazon/ags/html5/content/ContentManager$ContentInitializationCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/content/ContentManager;

.field final synthetic val$manifestEndpoint:Ljava/lang/String;

.field final synthetic val$postUpgradeCurrentContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/content/ContentManager;Ljava/lang/String;Lcom/amazon/ags/html5/content/ContentVersion;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    iput-object p2, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->val$manifestEndpoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->val$postUpgradeCurrentContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 242
    const/4 v8, 0x0

    .line 244
    .local v8, "shouldAttemptUpgrade":Z
    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->val$manifestEndpoint:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/amazon/ags/html5/content/ContentManager;->access$500(Lcom/amazon/ags/html5/content/ContentManager;ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 247
    .local v0, "manifestEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/ags/html5/content/ContentManifestEntry;>;"
    invoke-static {}, Lcom/amazon/ags/VersionInfo;->getSDKVersion()Lcom/amazon/ags/VersionInfo;

    move-result-object v7

    .line 248
    .local v7, "sdkVersion":Lcom/amazon/ags/VersionInfo;
    invoke-virtual {v7}, Lcom/amazon/ags/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/ags/html5/content/ContentManifestEntry;

    .line 249
    .local v9, "upgradeEntry":Lcom/amazon/ags/html5/content/ContentManifestEntry;
    if-eqz v9, :cond_0

    .line 251
    invoke-virtual {v9}, Lcom/amazon/ags/html5/content/ContentManifestEntry;->getVersion()Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->val$postUpgradeCurrentContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    invoke-virtual {v1, v3}, Lcom/amazon/ags/html5/content/ContentVersion;->compareTo(Lcom/amazon/ags/html5/content/ContentVersion;)I

    move-result v1

    if-lez v1, :cond_0

    .line 253
    const/4 v8, 0x1

    .line 257
    :cond_0
    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    .line 259
    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    invoke-virtual {v9}, Lcom/amazon/ags/html5/content/ContentManifestEntry;->getContentURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/amazon/ags/html5/content/ContentManager;->access$600()J

    move-result-wide v4

    invoke-virtual {v9}, Lcom/amazon/ags/html5/content/ContentManifestEntry;->getChecksum()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/amazon/ags/html5/content/ContentManager;->access$700(Lcom/amazon/ags/html5/content/ContentManager;ZLjava/lang/String;JLjava/lang/String;)Z

    .line 261
    :cond_1
    return-void
.end method
