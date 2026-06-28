.class Lcom/adcolony/sdk/s$a;
.super Lcom/adcolony/sdk/ab$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/s;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/s;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adcolony/sdk/s$a;->a:Lcom/adcolony/sdk/s;

    invoke-direct {p0}, Lcom/adcolony/sdk/ab$a;-><init>()V

    .line 54
    new-instance v0, Lcom/adcolony/sdk/s;

    invoke-direct {v0}, Lcom/adcolony/sdk/s;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/s$a;->b:Lcom/adcolony/sdk/ab;

    .line 55
    return-void
.end method


# virtual methods
.method a(Ljava/util/Date;)Lcom/adcolony/sdk/ab$a;
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcom/adcolony/sdk/ab;->l:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v0, p0, Lcom/adcolony/sdk/s$a;->b:Lcom/adcolony/sdk/ab;

    check-cast v0, Lcom/adcolony/sdk/s;

    invoke-static {v0}, Lcom/adcolony/sdk/s;->a(Lcom/adcolony/sdk/s;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "timestamp"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    invoke-super {p0, p1}, Lcom/adcolony/sdk/ab$a;->a(Ljava/util/Date;)Lcom/adcolony/sdk/ab$a;

    move-result-object v0

    return-object v0
.end method

.method a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/s$a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adcolony/sdk/s$a;->b:Lcom/adcolony/sdk/ab;

    check-cast v0, Lcom/adcolony/sdk/s;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/s;->a(Lcom/adcolony/sdk/s;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 59
    return-object p0
.end method
