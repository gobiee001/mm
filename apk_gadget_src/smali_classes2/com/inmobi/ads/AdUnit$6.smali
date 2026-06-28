.class final Lcom/inmobi/ads/AdUnit$6;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/AdUnit;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$6;->a:Lcom/inmobi/ads/AdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$6;->a:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->o()I

    move-result v0

    .line 875
    packed-switch v0, :pswitch_data_0

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown return value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") from #doAdLoadWork()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    :pswitch_0
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    .line 896
    return-void

    .line 875
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
