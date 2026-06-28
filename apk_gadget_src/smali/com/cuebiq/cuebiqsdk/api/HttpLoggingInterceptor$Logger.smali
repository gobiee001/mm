.class public interface abstract Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Logger;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Logger$1;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Logger$1;-><init>()V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Logger;->DEFAULT:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Logger;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
