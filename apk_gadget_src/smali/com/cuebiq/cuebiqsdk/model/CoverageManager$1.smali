.class Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;
.super Ljava/lang/Object;
.source "CoverageManager.java"

# interfaces
.implements Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->getGAIDAndCallCoverage(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/model/CoverageManager;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;->val$listener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;->val$listener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    invoke-static {v0, v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->access$000(Lcom/cuebiq/cuebiqsdk/model/CoverageManager;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V

    .line 84
    return-void
.end method

.method public onGoogleAdvID(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "googleAdvertisingID"    # Ljava/lang/String;
    .param p2, "isLimitedADTracking"    # Z

    .prologue
    .line 75
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->build(Landroid/content/Context;Z)Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;

    move-result-object v0

    .line 76
    .local v0, "stats":Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;
    invoke-virtual {v0, p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->setGoogleAid(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;->setIsGAIDOptout(Z)V

    .line 78
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;->this$0:Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$1;->val$listener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    invoke-static {v1, v2, v0, v3}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->access$000(Lcom/cuebiq/cuebiqsdk/model/CoverageManager;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/GeoLocationStats;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V

    .line 79
    return-void
.end method
