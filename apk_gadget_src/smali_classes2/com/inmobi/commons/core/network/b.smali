.class Lcom/inmobi/commons/core/network/b;
.super Ljava/lang/Object;
.source "NetworkConnection.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/commons/core/network/NetworkRequest;

.field private c:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/inmobi/commons/core/network/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/network/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 35
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 214
    if-eqz p0, :cond_0

    .line 217
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 219
    const-string v2, "errorMessage"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "errorMessage"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/inmobi/commons/core/network/c;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 15074
    iget-wide v2, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->u:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 182
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 16070
    iget-wide v4, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->u:J

    .line 182
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 183
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->RESPONSE_EXCEEDS_SPECIFIED_SIZE_LIMIT:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    const-string v2, "Response size greater than specified max response size"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 16082
    iput-object v0, p1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 209
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 15074
    goto :goto_0

    .line 185
    :cond_1
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 186
    :goto_2
    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 187
    array-length v2, v0

    if-eqz v2, :cond_5

    .line 188
    iget-object v2, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 16186
    iget-boolean v2, v2, Lcom/inmobi/commons/core/network/NetworkRequest;->s:Z

    .line 188
    if-eqz v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v2, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a([B)[B

    move-result-object v0

    .line 190
    if-nez v0, :cond_2

    .line 191
    new-instance v2, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->INVALID_ENCRYPTED_RESPONSE_RECEIVED:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    const-string v4, "Unable to decrypt the server response."

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 17082
    iput-object v2, p1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 196
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 17190
    iget-boolean v2, v2, Lcom/inmobi/commons/core/network/NetworkRequest;->v:Z

    .line 196
    if-eqz v2, :cond_3

    .line 197
    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/d;->a([B)[B

    move-result-object v0

    .line 198
    if-nez v0, :cond_3

    .line 199
    new-instance v2, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->GZIP_DECOMPRESSION_FAILED:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    const-string v4, "Failed to uncompress gzip response"

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 18082
    iput-object v2, p1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 203
    :cond_3
    if-eqz v0, :cond_5

    .line 19061
    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_7

    .line 19062
    :cond_4
    new-array v0, v1, [B

    iput-object v0, p1, Lcom/inmobi/commons/core/network/c;->a:[B

    .line 207
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 19074
    iput-object v0, p1, Lcom/inmobi/commons/core/network/c;->c:Ljava/util/Map;

    goto :goto_1

    .line 185
    :cond_6
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    .line 19065
    :cond_7
    array-length v2, v0

    new-array v2, v2, [B

    iput-object v2, p1, Lcom/inmobi/commons/core/network/c;->a:[B

    .line 19066
    iget-object v2, p1, Lcom/inmobi/commons/core/network/c;->a:[B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 6170
    iget v0, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->p:I

    .line 93
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 94
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 6182
    iget v0, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->q:I

    .line 94
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 97
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 7166
    iget-object v0, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    .line 104
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-eq v0, v1, :cond_1

    .line 106
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 107
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 109
    :cond_1
    return-void
.end method

.method private b()Lcom/inmobi/commons/core/network/c;
    .locals 6

    .prologue
    .line 127
    new-instance v1, Lcom/inmobi/commons/core/network/c;

    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-direct {v1, v0}, Lcom/inmobi/commons/core/network/c;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 8082
    iget-object v3, v3, Lcom/inmobi/commons/core/network/NetworkRequest;->o:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Response code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 133
    const/16 v0, 0xc8

    if-ne v2, v0, :cond_0

    .line 134
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v1, v0}, Lcom/inmobi/commons/core/network/b;->a(Lcom/inmobi/commons/core/network/c;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 178
    :goto_1
    return-object v1

    .line 136
    :cond_0
    :try_start_3
    invoke-static {v2}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->fromValue(I)Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    move-result-object v0

    .line 139
    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->BAD_REQUEST:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    if-ne v0, v3, :cond_1

    .line 140
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/inmobi/commons/core/network/b;->a(Lcom/inmobi/commons/core/network/c;Z)V

    .line 142
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/commons/core/network/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    new-instance v3, Lcom/inmobi/commons/core/network/NetworkError;

    invoke-direct {v3, v0, v2}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 9082
    iput-object v3, v1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 156
    :catch_0
    move-exception v0

    new-instance v0, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->HTTP_GATEWAY_TIMEOUT:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->HTTP_GATEWAY_TIMEOUT:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 11082
    iput-object v0, v1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    goto :goto_1

    .line 145
    :cond_1
    if-nez v0, :cond_2

    .line 146
    :try_start_5
    sget-object v0, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->UNKNOWN_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    .line 148
    :cond_2
    new-instance v3, Lcom/inmobi/commons/core/network/NetworkError;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HTTP:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 10082
    iput-object v3, v1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 149
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 11074
    iput-object v0, v1, Lcom/inmobi/commons/core/network/c;->c:Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 158
    :catch_1
    move-exception v0

    new-instance v0, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->NETWORK_IO_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->NETWORK_IO_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 12082
    iput-object v0, v1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    goto :goto_1

    .line 160
    :catch_2
    move-exception v0

    new-instance v0, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->OUT_OF_MEMORY_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->OUT_OF_MEMORY_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 13082
    iput-object v0, v1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    goto :goto_1

    .line 161
    :catch_3
    move-exception v0

    .line 166
    new-instance v2, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->UNKNOWN_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    sget-object v4, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->UNKNOWN_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 14082
    iput-object v2, v1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 169
    :try_start_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 170
    const-string v3, "type"

    const-string v4, "GenericException"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v3, "message"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v3, "root"

    const-string v4, "ExceptionCaught"

    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 174
    :catch_4
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in submitting telemetry event : ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()Lcom/inmobi/commons/core/network/c;
    .locals 6

    .prologue
    .line 40
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a()V

    .line 42
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->c()Ljava/lang/String;

    move-result-object v0

    .line 1086
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1088
    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/b;->a(Ljava/net/HttpURLConnection;)V

    .line 47
    iput-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    .line 48
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 1158
    iget-boolean v0, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->r:Z

    .line 48
    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 1166
    iget-object v0, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    .line 52
    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-ne v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->d()Ljava/lang/String;

    move-result-object v0

    .line 2114
    iget-object v1, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Length"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    iget-object v1, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2117
    const/4 v2, 0x0

    .line 2119
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2120
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2122
    :try_start_3
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/io/Closeable;)V

    .line 55
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/commons/core/network/b;->b()Lcom/inmobi/commons/core/network/c;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 2122
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 56
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 57
    new-instance v0, Lcom/inmobi/commons/core/network/c;

    iget-object v2, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-direct {v0, v2}, Lcom/inmobi/commons/core/network/c;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 58
    new-instance v2, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->NETWORK_IO_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 3082
    iput-object v2, v0, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    new-instance v0, Lcom/inmobi/commons/core/network/c;

    iget-object v1, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/network/c;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 61
    new-instance v1, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->BAD_REQUEST:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The URL is malformed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->BAD_REQUEST:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 4082
    iput-object v1, v0, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    goto :goto_0

    .line 62
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 63
    new-instance v0, Lcom/inmobi/commons/core/network/c;

    iget-object v2, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-direct {v0, v2}, Lcom/inmobi/commons/core/network/c;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 64
    new-instance v2, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->UNKNOWN_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 5082
    iput-object v2, v0, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 68
    :try_start_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 69
    const-string v3, "type"

    const-string v4, "GenericException"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v3, "message"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v3, "root"

    const-string v4, "ExceptionCaught"

    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 73
    :catch_3
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in submitting telemetry event : ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 78
    :cond_2
    new-instance v0, Lcom/inmobi/commons/core/network/c;

    iget-object v1, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/network/c;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 79
    new-instance v1, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->NETWORK_UNAVAILABLE_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    const-string v3, "Network not reachable currently. Please try again."

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 6082
    iput-object v1, v0, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    goto/16 :goto_0

    .line 2122
    :catchall_1
    move-exception v0

    goto/16 :goto_1
.end method
