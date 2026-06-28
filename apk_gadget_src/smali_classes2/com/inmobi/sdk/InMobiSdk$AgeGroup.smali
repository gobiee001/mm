.class public final enum Lcom/inmobi/sdk/InMobiSdk$AgeGroup;
.super Ljava/lang/Enum;
.source "InMobiSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/sdk/InMobiSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AgeGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/sdk/InMobiSdk$AgeGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

.field public static final enum ABOVE_65:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

.field public static final enum BELOW_18:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

.field public static final enum BETWEEN_18_AND_24:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

.field public static final enum BETWEEN_25_AND_29:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

.field public static final enum BETWEEN_30_AND_34:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

.field public static final enum BETWEEN_35_AND_44:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

.field public static final enum BETWEEN_45_AND_54:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

.field public static final enum BETWEEN_55_AND_65:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    const-string v1, "BELOW_18"

    const-string v2, "below18"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BELOW_18:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    .line 108
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    const-string v1, "BETWEEN_18_AND_24"

    const-string v2, "between18and24"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_18_AND_24:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    .line 109
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    const-string v1, "BETWEEN_25_AND_29"

    const-string v2, "between25and29"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_25_AND_29:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    .line 110
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    const-string v1, "BETWEEN_30_AND_34"

    const-string v2, "between30and34"

    invoke-direct {v0, v1, v7, v2}, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_30_AND_34:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    .line 111
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    const-string v1, "BETWEEN_35_AND_44"

    const-string v2, "between35and44"

    invoke-direct {v0, v1, v8, v2}, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_35_AND_44:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    .line 112
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    const-string v1, "BETWEEN_45_AND_54"

    const/4 v2, 0x5

    const-string v3, "between45and54"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_45_AND_54:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    .line 113
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    const-string v1, "BETWEEN_55_AND_65"

    const/4 v2, 0x6

    const-string v3, "between55and65"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_55_AND_65:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    .line 114
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    const-string v1, "ABOVE_65"

    const/4 v2, 0x7

    const-string v3, "above65"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->ABOVE_65:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    .line 106
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BELOW_18:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_18_AND_24:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_25_AND_29:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_30_AND_34:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    aput-object v1, v0, v7

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_35_AND_44:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_45_AND_54:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->BETWEEN_55_AND_65:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->ABOVE_65:Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->$VALUES:[Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput-object p3, p0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->a:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$AgeGroup;
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/sdk/InMobiSdk$AgeGroup;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->$VALUES:[Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    invoke-virtual {v0}, [Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/sdk/InMobiSdk$AgeGroup;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->a:Ljava/lang/String;

    return-object v0
.end method
