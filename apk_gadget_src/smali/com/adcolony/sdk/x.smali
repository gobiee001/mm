.class Lcom/adcolony/sdk/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "%s_%s_%s"

    iput-object v0, p0, Lcom/adcolony/sdk/x;->d:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/adcolony/sdk/x;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/adcolony/sdk/x;->b:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/adcolony/sdk/x;->c:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adcolony/sdk/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/adcolony/sdk/x;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adcolony/sdk/x;->c:Ljava/lang/String;

    return-object v0
.end method
