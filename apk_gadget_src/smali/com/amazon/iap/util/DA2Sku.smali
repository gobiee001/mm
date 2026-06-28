.class public final enum Lcom/amazon/iap/util/DA2Sku;
.super Ljava/lang/Enum;
.source "DA2Sku.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/iap/util/DA2Sku;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/iap/util/DA2Sku;

.field public static final enum BATTLEPACK1:Lcom/amazon/iap/util/DA2Sku;

.field public static final enum BATTLEPACK2:Lcom/amazon/iap/util/DA2Sku;

.field public static final enum BATTLEPACK3:Lcom/amazon/iap/util/DA2Sku;

.field public static final enum BATTLEPACK4:Lcom/amazon/iap/util/DA2Sku;

.field public static final enum PROPACK:Lcom/amazon/iap/util/DA2Sku;


# instance fields
.field private final availableMarkpetplace:Ljava/lang/String;

.field private final sku:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/amazon/iap/util/DA2Sku;

    const-string v1, "PROPACK"

    const-string v2, "com.chadtowns.da2.propack"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/amazon/iap/util/DA2Sku;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/iap/util/DA2Sku;->PROPACK:Lcom/amazon/iap/util/DA2Sku;

    .line 14
    new-instance v0, Lcom/amazon/iap/util/DA2Sku;

    const-string v1, "BATTLEPACK1"

    const-string v2, "com.chadtowns.da2.battlepack1"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/amazon/iap/util/DA2Sku;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK1:Lcom/amazon/iap/util/DA2Sku;

    .line 15
    new-instance v0, Lcom/amazon/iap/util/DA2Sku;

    const-string v1, "BATTLEPACK2"

    const-string v2, "com.chadtowns.da2.battlepack2"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/amazon/iap/util/DA2Sku;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK2:Lcom/amazon/iap/util/DA2Sku;

    .line 16
    new-instance v0, Lcom/amazon/iap/util/DA2Sku;

    const-string v1, "BATTLEPACK3"

    const-string v2, "com.chadtowns.da2.battlepack3"

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/amazon/iap/util/DA2Sku;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK3:Lcom/amazon/iap/util/DA2Sku;

    .line 17
    new-instance v0, Lcom/amazon/iap/util/DA2Sku;

    const-string v1, "BATTLEPACK4"

    const/4 v2, 0x4

    const-string v3, "com.chadtowns.da2.battlepack4"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/iap/util/DA2Sku;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK4:Lcom/amazon/iap/util/DA2Sku;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/iap/util/DA2Sku;

    sget-object v1, Lcom/amazon/iap/util/DA2Sku;->PROPACK:Lcom/amazon/iap/util/DA2Sku;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK1:Lcom/amazon/iap/util/DA2Sku;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK2:Lcom/amazon/iap/util/DA2Sku;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK3:Lcom/amazon/iap/util/DA2Sku;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK4:Lcom/amazon/iap/util/DA2Sku;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/iap/util/DA2Sku;->$VALUES:[Lcom/amazon/iap/util/DA2Sku;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "sku"    # Ljava/lang/String;
    .param p4, "availableMarkpetplace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lcom/amazon/iap/util/DA2Sku;->sku:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/amazon/iap/util/DA2Sku;->availableMarkpetplace:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static fromSku(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/iap/util/DA2Sku;
    .locals 1
    .param p0, "sku"    # Ljava/lang/String;
    .param p1, "marketplace"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->PROPACK:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->PROPACK:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getAvailableMarketplace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->PROPACK:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getAvailableMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->PROPACK:Lcom/amazon/iap/util/DA2Sku;

    .line 45
    :goto_0
    return-object v0

    .line 33
    :cond_1
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK1:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK1:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getAvailableMarketplace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK1:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getAvailableMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    :cond_2
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK1:Lcom/amazon/iap/util/DA2Sku;

    goto :goto_0

    .line 36
    :cond_3
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK2:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK2:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getAvailableMarketplace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK2:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getAvailableMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    :cond_4
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK2:Lcom/amazon/iap/util/DA2Sku;

    goto :goto_0

    .line 39
    :cond_5
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK3:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK3:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getAvailableMarketplace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK3:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getAvailableMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 40
    :cond_6
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK3:Lcom/amazon/iap/util/DA2Sku;

    goto :goto_0

    .line 42
    :cond_7
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK4:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK4:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getAvailableMarketplace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK4:Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getAvailableMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 43
    :cond_8
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->BATTLEPACK4:Lcom/amazon/iap/util/DA2Sku;

    goto/16 :goto_0

    .line 45
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/iap/util/DA2Sku;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/amazon/iap/util/DA2Sku;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/iap/util/DA2Sku;

    return-object v0
.end method

.method public static values()[Lcom/amazon/iap/util/DA2Sku;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/amazon/iap/util/DA2Sku;->$VALUES:[Lcom/amazon/iap/util/DA2Sku;

    invoke-virtual {v0}, [Lcom/amazon/iap/util/DA2Sku;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/iap/util/DA2Sku;

    return-object v0
.end method


# virtual methods
.method public getAvailableMarketplace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/iap/util/DA2Sku;->availableMarkpetplace:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/iap/util/DA2Sku;->sku:Ljava/lang/String;

    return-object v0
.end method
