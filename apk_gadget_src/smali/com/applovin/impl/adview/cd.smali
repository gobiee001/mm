.class Lcom/applovin/impl/adview/cd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/applovin/impl/adview/cb;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/cb;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/cd;->b:Lcom/applovin/impl/adview/cb;

    iput-object p2, p0, Lcom/applovin/impl/adview/cd;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/cd;->b:Lcom/applovin/impl/adview/cb;

    iget-object v1, p0, Lcom/applovin/impl/adview/cd;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/impl/adview/cb;Landroid/content/Context;)V

    return-void
.end method
