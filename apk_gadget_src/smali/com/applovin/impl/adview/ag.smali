.class Lcom/applovin/impl/adview/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/WebSettings;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/applovin/impl/adview/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebSettings;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ag;->c:Lcom/applovin/impl/adview/n;

    iput-object p2, p0, Lcom/applovin/impl/adview/ag;->a:Landroid/webkit/WebSettings;

    iput-object p3, p0, Lcom/applovin/impl/adview/ag;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/ag;->a:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lcom/applovin/impl/adview/ag;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method
