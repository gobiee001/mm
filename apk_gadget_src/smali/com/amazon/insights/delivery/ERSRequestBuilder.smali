.class public Lcom/amazon/insights/delivery/ERSRequestBuilder;
.super Ljava/lang/Object;
.source "ERSRequestBuilder.java"


# static fields
.field static final CONTENT_ENCODING_KEY:Ljava/lang/String; = "Content-Encoding"

.field static final DEFAULT_ENDPOINT:Ljava/lang/String; = "https://applab-sdk.amazon.com/1.0"

.field static final ENDPOINT_PATH:Ljava/lang/String; = "%s/applications/%s/events"

.field static final KEY_ENDPOINT:Ljava/lang/String; = "eventRecorderEndpoint"

.field static final UNIQUE_ID_HEADER_KEY:Ljava/lang/String; = "x-amzn-UniqueId"

.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private final applicationKey:Ljava/lang/String;

.field private final configuration:Lcom/amazon/insights/core/configuration/Configuration;

.field private final httpClient:Lcom/amazon/insights/core/http/HttpClient;

.field private final uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/amazon/insights/delivery/ERSRequestBuilder;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/insights/core/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/insights/core/configuration/Configuration;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/amazon/insights/core/http/HttpClient;
    .param p2, "uniqueId"    # Ljava/lang/String;
    .param p3, "applicationKey"    # Ljava/lang/String;
    .param p4, "configuration"    # Lcom/amazon/insights/core/configuration/Configuration;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->httpClient:Lcom/amazon/insights/core/http/HttpClient;

    .line 45
    iput-object p2, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->uniqueId:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->applicationKey:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->configuration:Lcom/amazon/insights/core/configuration/Configuration;

    .line 48
    return-void
.end method

.method private getEndpointUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->configuration:Lcom/amazon/insights/core/configuration/Configuration;

    const-string v1, "eventRecorderEndpoint"

    const-string v2, "https://applab-sdk.amazon.com/1.0"

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/core/configuration/Configuration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/insights/core/InsightsContext;)Lcom/amazon/insights/delivery/ERSRequestBuilder;
    .locals 5
    .param p0, "context"    # Lcom/amazon/insights/core/InsightsContext;

    .prologue
    .line 34
    new-instance v0, Lcom/amazon/insights/delivery/ERSRequestBuilder;

    invoke-interface {p0}, Lcom/amazon/insights/core/InsightsContext;->getHttpClient()Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v1

    invoke-interface {p0}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/insights/core/idresolver/Id;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/insights/InsightsCredentials;->getApplicationKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/insights/delivery/ERSRequestBuilder;-><init>(Lcom/amazon/insights/core/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/insights/core/configuration/Configuration;)V

    return-object v0
.end method


# virtual methods
.method public createHttpRequest(Lorg/json/JSONArray;)Lcom/amazon/insights/core/http/HttpClient$Request;
    .locals 14
    .param p1, "events"    # Lorg/json/JSONArray;

    .prologue
    const/4 v8, 0x0

    .line 51
    iget-object v9, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->httpClient:Lcom/amazon/insights/core/http/HttpClient;

    invoke-interface {v9}, Lcom/amazon/insights/core/http/HttpClient;->newRequest()Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v9

    const-string v10, "%s/applications/%s/events"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-direct {p0}, Lcom/amazon/insights/delivery/ERSRequestBuilder;->getEndpointUrl()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->applicationKey:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/amazon/insights/core/http/HttpClient$Request;->setUrl(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v9

    const-string v10, "x-amzn-UniqueId"

    iget-object v11, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->uniqueId:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Lcom/amazon/insights/core/http/HttpClient$Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v9

    sget-object v10, Lcom/amazon/insights/core/http/HttpClient$HttpMethod;->POST:Lcom/amazon/insights/core/http/HttpClient$HttpMethod;

    invoke-interface {v9, v10}, Lcom/amazon/insights/core/http/HttpClient$Request;->setMethod(Lcom/amazon/insights/core/http/HttpClient$HttpMethod;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v7

    .line 56
    .local v7, "httpRequest":Lcom/amazon/insights/core/http/HttpClient$Request;
    instance-of v9, p1, Lorg/json/JSONArray;

    if-nez v9, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .end local p1    # "events":Lorg/json/JSONArray;
    .local v0, "body":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    move-object v7, v8

    .line 102
    .end local v7    # "httpRequest":Lcom/amazon/insights/core/http/HttpClient$Request;
    :goto_1
    return-object v7

    .line 56
    .end local v0    # "body":Ljava/lang/String;
    .restart local v7    # "httpRequest":Lcom/amazon/insights/core/http/HttpClient$Request;
    .restart local p1    # "events":Lorg/json/JSONArray;
    :cond_0
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "events":Lorg/json/JSONArray;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    .restart local v0    # "body":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 64
    .local v3, "compressedBytes":[B
    const/4 v1, 0x0

    .line 65
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 68
    .local v5, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    .end local v5    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .local v6, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    const-string v9, "UTF-8"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 71
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 74
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    .line 82
    :goto_2
    if-eqz v2, :cond_2

    .line 83
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 85
    :cond_2
    if-eqz v6, :cond_3

    .line 86
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 91
    :cond_3
    :goto_3
    const/4 v1, 0x0

    .line 92
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 95
    .end local v6    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :goto_4
    if-nez v3, :cond_8

    move-object v7, v8

    .line 96
    goto :goto_1

    .line 75
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v9, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v10, "Error creating compressed String for ERS Request"

    invoke-virtual {v9, v10, v4}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 78
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .line 79
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    sget-object v9, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v10, "Error attempting to compress request contents"

    invoke-virtual {v9, v10, v4}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 82
    if-eqz v1, :cond_4

    .line 83
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 85
    :cond_4
    if-eqz v5, :cond_5

    .line 86
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 91
    :cond_5
    :goto_6
    const/4 v1, 0x0

    .line 92
    const/4 v5, 0x0

    .line 93
    goto :goto_4

    .line 88
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :catch_2
    move-exception v4

    .line 89
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v10, "Errror closing compression streams"

    invoke-virtual {v9, v10, v4}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 88
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :catch_3
    move-exception v4

    .line 89
    sget-object v9, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v10, "Errror closing compression streams"

    invoke-virtual {v9, v10, v4}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 81
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 82
    :goto_7
    if-eqz v1, :cond_6

    .line 83
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 85
    :cond_6
    if-eqz v5, :cond_7

    .line 86
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 91
    :cond_7
    :goto_8
    const/4 v1, 0x0

    .line 92
    const/4 v5, 0x0

    throw v8

    .line 88
    :catch_4
    move-exception v4

    .line 89
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v10, "Errror closing compression streams"

    invoke-virtual {v9, v10, v4}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 99
    .end local v4    # "e":Ljava/io/IOException;
    :cond_8
    invoke-interface {v7, v3}, Lcom/amazon/insights/core/http/HttpClient$Request;->setPostBody([B)Lcom/amazon/insights/core/http/HttpClient$Request;

    .line 100
    const-string v8, "Content-Encoding"

    const-string v9, "gzip"

    invoke-interface {v7, v8, v9}, Lcom/amazon/insights/core/http/HttpClient$Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    goto/16 :goto_1

    .line 81
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 78
    :catch_5
    move-exception v4

    goto :goto_5

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v4

    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5
.end method
