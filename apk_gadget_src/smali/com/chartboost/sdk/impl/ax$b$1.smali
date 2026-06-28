.class Lcom/chartboost/sdk/impl/ax$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ax$b;-><init>(Lcom/chartboost/sdk/impl/ax;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ax;

.field final synthetic b:Lcom/chartboost/sdk/impl/ax$b;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ax$b;Lcom/chartboost/sdk/impl/ax;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ax$b$1;->b:Lcom/chartboost/sdk/impl/ax$b;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/ax$b$1;->a:Lcom/chartboost/sdk/impl/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$b$1;->b:Lcom/chartboost/sdk/impl/ax$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ax$b;->g:Lcom/chartboost/sdk/impl/ax;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ax;->r:Z

    if-nez v0, :cond_0

    .line 163
    const-string v0, "CBWebViewProtocol"

    const-string v1, "Webview seems to be taking more time loading the html content, so closing the view."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$b$1;->b:Lcom/chartboost/sdk/impl/ax$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ax$b;->g:Lcom/chartboost/sdk/impl/ax;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 166
    :cond_0
    return-void
.end method
