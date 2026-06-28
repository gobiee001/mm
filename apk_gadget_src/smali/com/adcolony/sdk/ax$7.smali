.class Lcom/adcolony/sdk/ax$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ax;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ax;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ax;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/adcolony/sdk/ax$7;->a:Lcom/adcolony/sdk/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/adcolony/sdk/ax$7;->a:Lcom/adcolony/sdk/ax;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/ax;->c(Lcom/adcolony/sdk/af;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/adcolony/sdk/ax$7;->a:Lcom/adcolony/sdk/ax;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/ax;->g(Lcom/adcolony/sdk/af;)V

    .line 347
    :cond_0
    return-void
.end method
