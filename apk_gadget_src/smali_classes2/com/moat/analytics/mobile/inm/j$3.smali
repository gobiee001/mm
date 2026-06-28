.class Lcom/moat/analytics/mobile/inm/j$3;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/inm/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/inm/j;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/inm/j;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/inm/j$3;->a:Lcom/moat/analytics/mobile/inm/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/j$3;->a:Lcom/moat/analytics/mobile/inm/j;

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/j;->g(Lcom/moat/analytics/mobile/inm/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/m;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
