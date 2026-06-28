.class Lcom/applovin/impl/adview/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/br;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/br;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/bs;->a:Lcom/applovin/impl/adview/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/bs;->a:Lcom/applovin/impl/adview/br;

    iget-object v0, v0, Lcom/applovin/impl/adview/br;->a:Lcom/applovin/impl/adview/az;

    invoke-static {v0}, Lcom/applovin/impl/adview/az;->c(Lcom/applovin/impl/adview/az;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/bt;

    invoke-direct {v1, p0, p2, p3}, Lcom/applovin/impl/adview/bt;-><init>(Lcom/applovin/impl/adview/bs;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method
