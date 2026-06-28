.class Lcom/chartboost/sdk/impl/ac$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ac;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ac;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ac$a;->a:Lcom/chartboost/sdk/impl/ac;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ac$a;->a:Lcom/chartboost/sdk/impl/ac;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ac;->a(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ac$a;->a:Lcom/chartboost/sdk/impl/ac;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ac;->notifyObservers()V

    .line 81
    return-void
.end method
