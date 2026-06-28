.class Lcom/chartboost/sdk/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/chartboost/sdk/impl/d;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field c:I

.field d:Lcom/chartboost/sdk/Model/a;

.field e:Ljava/lang/Integer;

.field f:Z

.field g:I

.field h:Ljava/lang/Long;

.field i:Ljava/lang/Long;

.field j:Ljava/lang/Long;

.field k:Ljava/lang/Integer;

.field l:Ljava/lang/Integer;

.field m:Ljava/lang/Integer;

.field n:Ljava/lang/Integer;

.field o:Ljava/lang/Integer;

.field p:Ljava/lang/Integer;

.field q:Ljava/lang/Integer;

.field r:Ljava/lang/Integer;


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/chartboost/sdk/impl/d;->a:I

    .line 78
    iput-object p2, p0, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/d;->f:Z

    .line 80
    iput p3, p0, Lcom/chartboost/sdk/impl/d;->c:I

    .line 81
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    .line 82
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->e:Ljava/lang/Integer;

    .line 83
    const/4 v0, 0x3

    iput v0, p0, Lcom/chartboost/sdk/impl/d;->g:I

    .line 85
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->h:Ljava/lang/Long;

    .line 86
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->i:Ljava/lang/Long;

    .line 87
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->j:Ljava/lang/Long;

    .line 89
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->k:Ljava/lang/Integer;

    .line 90
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->l:Ljava/lang/Integer;

    .line 91
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->m:Ljava/lang/Integer;

    .line 92
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->n:Ljava/lang/Integer;

    .line 93
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->o:Ljava/lang/Integer;

    .line 94
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->p:Ljava/lang/Integer;

    .line 95
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->q:Ljava/lang/Integer;

    .line 96
    iput-object v1, p0, Lcom/chartboost/sdk/impl/d;->r:Ljava/lang/Integer;

    .line 97
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/d;)I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/chartboost/sdk/impl/d;->a:I

    iget v1, p1, Lcom/chartboost/sdk/impl/d;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/chartboost/sdk/impl/d;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/d;->a(Lcom/chartboost/sdk/impl/d;)I

    move-result v0

    return v0
.end method
