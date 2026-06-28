.class public final enum Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

.field public static final enum BASIC:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

.field public static final enum BODY:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

.field public static final enum HEADERS:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

.field public static final enum NONE:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->NONE:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    .line 46
    new-instance v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    const-string v1, "BASIC"

    invoke-direct {v0, v1, v3}, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->BASIC:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    .line 64
    new-instance v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    const-string v1, "HEADERS"

    invoke-direct {v0, v1, v4}, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->HEADERS:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    .line 86
    new-instance v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    const-string v1, "BODY"

    invoke-direct {v0, v1, v5}, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->BODY:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->NONE:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->BASIC:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->HEADERS:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->BODY:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v5

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public static values()[Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    return-object v0
.end method
