.class Lcom/applovin/impl/adview/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/ar;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/as;->a:Lcom/applovin/impl/adview/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/as;->a:Lcom/applovin/impl/adview/ar;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ar;->dismiss()V

    return-void
.end method
