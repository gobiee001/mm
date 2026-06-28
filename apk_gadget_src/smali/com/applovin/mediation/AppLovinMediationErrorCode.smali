.class public final enum Lcom/applovin/mediation/AppLovinMediationErrorCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applovin/mediation/AppLovinMediationErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADAPTER_CONFIGURATION_ERROR:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum ADAPTER_NOT_FOUND:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum INTERNAL_AD_SIZE_NOT_SUPPORTED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum INTERNAL_AD_TYPE_NOT_SUPPORTED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum NETWORK_AD_NOT_READY:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum NETWORK_BAD_REQUEST:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum NETWORK_DISPLAY_INVALID_STATE:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum NETWORK_DISPLAY_UNSPECIFIED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum NETWORK_INTERNAL_ERROR:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum NETWORK_INVALID_CONFIGURATION:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum NETWORK_INVALID_STATE:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum NETWORK_NO_CONNECTION:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum NETWORK_NO_FILL:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum NETWORK_SERVER_ERROR:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum NETWORK_TIMEOUT:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field public static final enum NETWORK_UNSPECIFIED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

.field private static final synthetic b:[Lcom/applovin/mediation/AppLovinMediationErrorCode;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, -0x1456

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "ADAPTER_CONFIGURATION_ERROR"

    const/16 v2, -0x13ec

    invoke-direct {v0, v1, v5, v2}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "ADAPTER_NOT_FOUND"

    const/16 v2, -0x13ed

    invoke-direct {v0, v1, v6, v2}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->ADAPTER_NOT_FOUND:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "NETWORK_UNSPECIFIED"

    const/16 v2, -0x1450

    invoke-direct {v0, v1, v7, v2}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_UNSPECIFIED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "NETWORK_INVALID_STATE"

    const/16 v2, -0x1451

    invoke-direct {v0, v1, v8, v2}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_INVALID_STATE:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "NETWORK_INVALID_CONFIGURATION"

    const/4 v2, 0x4

    const/16 v3, -0x1452

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_INVALID_CONFIGURATION:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "NETWORK_BAD_REQUEST"

    const/4 v2, 0x5

    const/16 v3, -0x1453

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_BAD_REQUEST:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "NETWORK_TIMEOUT"

    const/4 v2, 0x6

    const/16 v3, -0x138a

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_TIMEOUT:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "NETWORK_NO_CONNECTION"

    const/4 v2, 0x7

    const/16 v3, -0x138b

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_NO_CONNECTION:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "NETWORK_NO_FILL"

    const/16 v2, 0x8

    const/16 v3, -0x1454

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_NO_FILL:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "NETWORK_AD_NOT_READY"

    const/16 v2, 0x9

    const/16 v3, -0x1455

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_AD_NOT_READY:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "NETWORK_SERVER_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v4}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_SERVER_ERROR:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "NETWORK_INTERNAL_ERROR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v4}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_INTERNAL_ERROR:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "NETWORK_DISPLAY_UNSPECIFIED"

    const/16 v2, 0xc

    const/16 v3, -0x14b4

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_DISPLAY_UNSPECIFIED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "NETWORK_DISPLAY_INVALID_STATE"

    const/16 v2, 0xd

    const/16 v3, -0x14b5

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_DISPLAY_INVALID_STATE:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "INTERNAL_ERROR"

    const/16 v2, 0xe

    const/16 v3, -0x157c

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->INTERNAL_ERROR:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "INTERNAL_AD_TYPE_NOT_SUPPORTED"

    const/16 v2, 0xf

    const/16 v3, -0x157d

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->INTERNAL_AD_TYPE_NOT_SUPPORTED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    new-instance v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const-string v1, "INTERNAL_AD_SIZE_NOT_SUPPORTED"

    const/16 v2, 0x10

    const/16 v3, -0x157e

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/mediation/AppLovinMediationErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->INTERNAL_AD_SIZE_NOT_SUPPORTED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/applovin/mediation/AppLovinMediationErrorCode;

    sget-object v1, Lcom/applovin/mediation/AppLovinMediationErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/applovin/mediation/AppLovinMediationErrorCode;->ADAPTER_NOT_FOUND:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_UNSPECIFIED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_INVALID_STATE:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_INVALID_CONFIGURATION:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_BAD_REQUEST:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_TIMEOUT:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_NO_CONNECTION:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_NO_FILL:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_AD_NOT_READY:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_SERVER_ERROR:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_INTERNAL_ERROR:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_DISPLAY_UNSPECIFIED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->NETWORK_DISPLAY_INVALID_STATE:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->INTERNAL_ERROR:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->INTERNAL_AD_TYPE_NOT_SUPPORTED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/applovin/mediation/AppLovinMediationErrorCode;->INTERNAL_AD_SIZE_NOT_SUPPORTED:Lcom/applovin/mediation/AppLovinMediationErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->b:[Lcom/applovin/mediation/AppLovinMediationErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/mediation/AppLovinMediationErrorCode;
    .locals 1

    const-class v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/applovin/mediation/AppLovinMediationErrorCode;
    .locals 1

    sget-object v0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->b:[Lcom/applovin/mediation/AppLovinMediationErrorCode;

    invoke-virtual {v0}, [Lcom/applovin/mediation/AppLovinMediationErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/mediation/AppLovinMediationErrorCode;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/applovin/mediation/AppLovinMediationErrorCode;->a:I

    return v0
.end method
