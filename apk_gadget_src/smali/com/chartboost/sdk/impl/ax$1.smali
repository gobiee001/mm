.class Lcom/chartboost/sdk/impl/ax$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ax;->m()V
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
    .line 515
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ax$1;->b:Lcom/chartboost/sdk/impl/ax;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/ax$1;->a:Lcom/chartboost/sdk/impl/ax$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$1;->a:Lcom/chartboost/sdk/impl/ax$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$1;->a:Lcom/chartboost/sdk/impl/ax$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    if-eqz v0, :cond_0

    .line 520
    const-string v0, "javascript:Chartboost.EventHandler.handleNativeEvent(\"onForeground\", \"\")"

    .line 521
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

    .line 522
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$1;->a:Lcom/chartboost/sdk/impl/ax$b;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/aw;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    const-class v1, Lcom/chartboost/sdk/impl/ax;

    const-string v2, "onResume Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
