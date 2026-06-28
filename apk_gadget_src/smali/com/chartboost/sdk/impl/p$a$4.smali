.class Lcom/chartboost/sdk/impl/p$a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/p$a;->e(Z)V
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
    .line 407
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p$a$4;->a:Lcom/chartboost/sdk/impl/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a$4;->a:Lcom/chartboost/sdk/impl/p$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p$a;->k:Lcom/chartboost/sdk/impl/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/q;->a(Z)V

    .line 410
    return-void
.end method
