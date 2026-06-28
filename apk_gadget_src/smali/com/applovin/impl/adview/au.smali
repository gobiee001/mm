.class Lcom/applovin/impl/adview/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/ar;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/au;->a:Lcom/applovin/impl/adview/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/au;->a:Lcom/applovin/impl/adview/ar;

    invoke-static {v0}, Lcom/applovin/impl/adview/ar;->b(Lcom/applovin/impl/adview/ar;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/au;->a:Lcom/applovin/impl/adview/ar;

    invoke-static {v1}, Lcom/applovin/impl/adview/ar;->a(Lcom/applovin/impl/adview/ar;)Lcom/applovin/impl/adview/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/au;->a:Lcom/applovin/impl/adview/ar;

    invoke-static {v0}, Lcom/applovin/impl/adview/ar;->c(Lcom/applovin/impl/adview/ar;)V

    return-void
.end method
