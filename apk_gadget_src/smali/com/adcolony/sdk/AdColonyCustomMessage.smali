.class public Lcom/adcolony/sdk/AdColonyCustomMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/adcolony/sdk/az;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/adcolony/sdk/az;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->b:Ljava/lang/String;

    .line 22
    :cond_1
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyCustomMessage;->b:Ljava/lang/String;

    return-object v0
.end method
