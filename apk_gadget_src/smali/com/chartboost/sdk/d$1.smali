.class Lcom/chartboost/sdk/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Model/c;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/chartboost/sdk/d;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Model/c;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/chartboost/sdk/d$1;->c:Lcom/chartboost/sdk/d;

    iput-object p2, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    iput-object p3, p0, Lcom/chartboost/sdk/d$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 133
    iget-object v1, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    const/4 v2, 0x4

    iput v2, v1, Lcom/chartboost/sdk/Model/c;->l:I

    .line 135
    iget-object v1, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    if-ne v1, v0, :cond_0

    .line 136
    const/4 v0, 0x6

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->o:I

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ao;->a(I)Ljava/lang/Integer;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    :cond_1
    new-instance v1, Lcom/chartboost/sdk/c$c;

    iget-object v2, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 144
    iget-object v2, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    iput-object v2, v1, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    .line 145
    iget-object v2, p0, Lcom/chartboost/sdk/d$1;->b:Landroid/app/Activity;

    iput-object v2, v1, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 146
    iget-object v2, p0, Lcom/chartboost/sdk/d$1;->c:Lcom/chartboost/sdk/d;

    iget-object v2, v2, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/impl/ao;

    iget-object v3, p0, Lcom/chartboost/sdk/d$1;->a:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2, v0, v3, v1}, Lcom/chartboost/sdk/impl/ao;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method
