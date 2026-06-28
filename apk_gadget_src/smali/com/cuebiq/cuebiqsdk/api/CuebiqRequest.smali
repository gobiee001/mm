.class public abstract Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;
.super Ljava/lang/Object;
.source "CuebiqRequest.java"


# static fields
.field public static final AUTH_HEADER:Ljava/lang/String; = "x-beintoo-auth"

.field static final MEDIA_TYPE_APPLICATION_JSON:Ljava/lang/String; = "application/json; charset=utf-8"

.field public static final PACKAGE_HEADER:Ljava/lang/String; = "x-cuebiq-package"


# instance fields
.field final mBuilder:Lokhttp3/HttpUrl$Builder;

.field mRequest:Lokhttp3/Request;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;->mBuilder:Lokhttp3/HttpUrl$Builder;

    .line 21
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;->mBuilder:Lokhttp3/HttpUrl$Builder;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 22
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;->mBuilder:Lokhttp3/HttpUrl$Builder;

    const-string v1, "in.cuebiq.com"

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 23
    return-void
.end method


# virtual methods
.method public request()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;->mRequest:Lokhttp3/Request;

    return-object v0
.end method
