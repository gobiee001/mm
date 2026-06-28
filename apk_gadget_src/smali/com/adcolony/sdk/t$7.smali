.class Lcom/adcolony/sdk/t$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/t;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/t;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/t;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/adcolony/sdk/t$7;->a:Lcom/adcolony/sdk/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/adcolony/sdk/t$7;->a:Lcom/adcolony/sdk/t;

    new-instance v1, Lcom/adcolony/sdk/t$7$1;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/t$7$1;-><init>(Lcom/adcolony/sdk/t$7;Lcom/adcolony/sdk/af;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/t;->a(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method
