.class public Lcom/amazon/iap/util/DA2IapManager$EntitlementRecord;
.super Ljava/lang/Object;
.source "DA2IapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/iap/util/DA2IapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntitlementRecord"
.end annotation


# static fields
.field public static final DATE_NOT_SET:J = -0x1L


# instance fields
.field private cancelDate:J

.field private purchaseDate:J

.field private receiptId:Ljava/lang/String;

.field private sku:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCancelDate()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/amazon/iap/util/DA2IapManager$EntitlementRecord;->cancelDate:J

    return-wide v0
.end method

.method public getPurchaseDate()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/amazon/iap/util/DA2IapManager$EntitlementRecord;->purchaseDate:J

    return-wide v0
.end method

.method public getReceiptId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/iap/util/DA2IapManager$EntitlementRecord;->receiptId:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/iap/util/DA2IapManager$EntitlementRecord;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/iap/util/DA2IapManager$EntitlementRecord;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setCancelDate(J)V
    .locals 1
    .param p1, "cancelDate"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/amazon/iap/util/DA2IapManager$EntitlementRecord;->cancelDate:J

    .line 35
    return-void
.end method

.method public setPurchaseDate(J)V
    .locals 1
    .param p1, "purchaseDate"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/amazon/iap/util/DA2IapManager$EntitlementRecord;->purchaseDate:J

    .line 67
    return-void
.end method

.method public setReceiptId(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiptId"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/amazon/iap/util/DA2IapManager$EntitlementRecord;->receiptId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setSku(Ljava/lang/String;)V
    .locals 0
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amazon/iap/util/DA2IapManager$EntitlementRecord;->sku:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazon/iap/util/DA2IapManager$EntitlementRecord;->userId:Ljava/lang/String;

    .line 51
    return-void
.end method
