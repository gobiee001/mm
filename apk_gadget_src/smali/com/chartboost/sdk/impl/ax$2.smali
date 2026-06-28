.class Lcom/chartboost/sdk/impl/ax$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ax;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ax$b;

.field final synthetic b:Lcom/chartboost/sdk/impl/ax;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ax;Lcom/chartboost/sdk/impl/ax$b;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ax$2;->b:Lcom/chartboost/sdk/impl/ax;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/ax$2;->a:Lcom/chartboost/sdk/impl/ax$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 541
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$2;->a:Lcom/chartboost/sdk/impl/ax$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$2;->a:Lcom/chartboost/sdk/impl/ax$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    if-eqz v0, :cond_0

    .line 542
    const-string v0, "javascript:Chartboost.EventHandler.handleNativeEvent(\"onBackground\", \"\")"

    .line 543
    const-string v1, "CBWebViewProtocol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling native to javascript: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$2;->a:Lcom/chartboost/sdk/impl/ax$b;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/aw;->loadUrl(Ljava/lang/String;)V

    .line 546
    :cond_0
    return-void
.end method
