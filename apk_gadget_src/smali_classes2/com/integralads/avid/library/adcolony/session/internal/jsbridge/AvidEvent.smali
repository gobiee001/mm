.class public Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidEvent;->a:I

    .line 16
    iput-object p2, p0, Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidEvent;->b:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidEvent;->c:Lorg/json/JSONObject;

    .line 18
    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidEvent;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidEvent;->b:Ljava/lang/String;

    return-object v0
.end method
