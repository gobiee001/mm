.class Lcom/chartboost/sdk/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Model/d;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/c;

.field private final b:Lcom/chartboost/sdk/impl/d;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/c;Lcom/chartboost/sdk/impl/d;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    .line 18
    iput-object p2, p0, Lcom/chartboost/sdk/impl/b;->b:Lcom/chartboost/sdk/impl/d;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/c;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 26
    iput v2, p1, Lcom/chartboost/sdk/Model/c;->l:I

    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->b:Lcom/chartboost/sdk/impl/d;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/c;->d:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/c;)V

    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/chartboost/sdk/Model/c;->n:I

    if-eq v0, v2, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-eq v0, v2, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/b;->c(Lcom/chartboost/sdk/Model/c;)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/chartboost/sdk/impl/b;->b:Lcom/chartboost/sdk/impl/d;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/b;->b:Lcom/chartboost/sdk/impl/d;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 46
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 6

    .prologue
    .line 91
    new-instance v0, Lcom/chartboost/sdk/c$c;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/c;->d:Lcom/chartboost/sdk/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 92
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    .line 93
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    .line 95
    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/chartboost/sdk/impl/b;->b:Lcom/chartboost/sdk/impl/d;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/b;->b:Lcom/chartboost/sdk/impl/d;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 99
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public b(Lcom/chartboost/sdk/Model/c;)V
    .locals 6

    .prologue
    .line 66
    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/chartboost/sdk/impl/b;->b:Lcom/chartboost/sdk/impl/d;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/b;->b:Lcom/chartboost/sdk/impl/d;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 70
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public c(Lcom/chartboost/sdk/Model/c;)V
    .locals 6

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/c;->r:Z

    .line 79
    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/chartboost/sdk/impl/b;->b:Lcom/chartboost/sdk/impl/d;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/b;->b:Lcom/chartboost/sdk/impl/d;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 83
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method
