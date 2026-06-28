.class public Lcom/amazon/iap/util/UserIapData;
.super Ljava/lang/Object;
.source "UserIapData.java"


# instance fields
.field private final amazonMarketplace:Ljava/lang/String;

.field private final amazonUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "amazonUserId"    # Ljava/lang/String;
    .param p2, "amazonMarketplace"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/iap/util/UserIapData;->amazonUserId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/amazon/iap/util/UserIapData;->amazonMarketplace:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getAmazonMarketplace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amazon/iap/util/UserIapData;->amazonMarketplace:Ljava/lang/String;

    return-object v0
.end method

.method public getAmazonUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amazon/iap/util/UserIapData;->amazonUserId:Ljava/lang/String;

    return-object v0
.end method
