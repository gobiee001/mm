.class Lcom/chartboost/sdk/impl/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/c;->c(Lcom/chartboost/sdk/impl/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/d;

.field final synthetic b:Lcom/chartboost/sdk/impl/c;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/c;Lcom/chartboost/sdk/impl/d;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/chartboost/sdk/impl/c$2;->b:Lcom/chartboost/sdk/impl/c;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/c$2;->a:Lcom/chartboost/sdk/impl/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZII)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$2;->b:Lcom/chartboost/sdk/impl/c;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c$2;->a:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/d;ZII)V

    .line 485
    return-void
.end method
