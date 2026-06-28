.class Lcom/chartboost/sdk/impl/p$a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/p$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/p$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/p$a;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p$a$5;->a:Lcom/chartboost/sdk/impl/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a$5;->a:Lcom/chartboost/sdk/impl/p$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    const-class v1, Lcom/chartboost/sdk/impl/p$a;

    const-string v2, "onCloseButton Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
