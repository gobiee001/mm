.class Lcom/amazon/insights/core/crash/ers/ERSClient$1$1;
.super Ljava/lang/Object;
.source "ERSClient.java"

# interfaces
.implements Lcom/amazon/insights/error/InsightsError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/core/crash/ers/ERSClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final message:Ljava/lang/String;

.field final synthetic this$1:Lcom/amazon/insights/core/crash/ers/ERSClient$1;

.field final synthetic val$response:Lcom/amazon/insights/core/http/HttpClient$Response;


# direct methods
.method constructor <init>(Lcom/amazon/insights/core/crash/ers/ERSClient$1;Lcom/amazon/insights/core/http/HttpClient$Response;)V
    .locals 4

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1$1;->this$1:Lcom/amazon/insights/core/crash/ers/ERSClient$1;

    iput-object p2, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1$1;->val$response:Lcom/amazon/insights/core/http/HttpClient$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "Failed to submit events to EventService: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1$1;->val$response:Lcom/amazon/insights/core/http/HttpClient$Response;

    invoke-interface {v3}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1$1;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1$1;->message:Ljava/lang/String;

    return-object v0
.end method
