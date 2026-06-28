.class public Lcom/chartboost/sdk/impl/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/chartboost/sdk/impl/ah;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/chartboost/sdk/impl/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/x",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/chartboost/sdk/impl/ai;

.field private final d:Lcom/chartboost/sdk/impl/ac;

.field private final e:Lcom/chartboost/sdk/Libraries/i;

.field private final f:Landroid/os/Handler;

.field private g:Lcom/chartboost/sdk/impl/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/z",
            "<TT;>;"
        }
    .end annotation
.end field

.field private h:Lcom/chartboost/sdk/impl/aa;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/Libraries/i;Landroid/os/Handler;Lcom/chartboost/sdk/impl/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/chartboost/sdk/impl/ai;",
            "Lcom/chartboost/sdk/impl/ac;",
            "Lcom/chartboost/sdk/Libraries/i;",
            "Landroid/os/Handler;",
            "Lcom/chartboost/sdk/impl/x",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ah;->b:Ljava/util/concurrent/Executor;

    .line 50
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ah;->c:Lcom/chartboost/sdk/impl/ai;

    .line 51
    iput-object p3, p0, Lcom/chartboost/sdk/impl/ah;->d:Lcom/chartboost/sdk/impl/ac;

    .line 52
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/i;

    .line 53
    iput-object p5, p0, Lcom/chartboost/sdk/impl/ah;->f:Landroid/os/Handler;

    .line 54
    iput-object p6, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    .line 55
    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/x;)Lcom/chartboost/sdk/impl/aa;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/x",
            "<TT;>;)",
            "Lcom/chartboost/sdk/impl/aa;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/16 v1, 0x2710

    .line 108
    const/4 v0, 0x0

    .line 112
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/x;I)Lcom/chartboost/sdk/impl/aa;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    .line 115
    mul-int/lit8 v1, v1, 0x2

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    throw v2
.end method

.method private a(Lcom/chartboost/sdk/impl/x;I)Lcom/chartboost/sdk/impl/aa;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/x",
            "<TT;>;I)",
            "Lcom/chartboost/sdk/impl/aa;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/x;->a()Lcom/chartboost/sdk/impl/y;

    move-result-object v3

    .line 127
    iget-object v4, v3, Lcom/chartboost/sdk/impl/y;->a:Ljava/util/Map;

    .line 129
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->c:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/impl/x;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 130
    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 131
    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 132
    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 133
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 136
    if-eqz v4, :cond_0

    .line 137
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 142
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/chartboost/sdk/impl/x;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 143
    iget-object v0, p1, Lcom/chartboost/sdk/impl/x;->b:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, v3, Lcom/chartboost/sdk/impl/y;->b:[B

    if-eqz v0, :cond_2

    .line 145
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 146
    iget-object v0, v3, Lcom/chartboost/sdk/impl/y;->b:[B

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 147
    iget-object v0, v3, Lcom/chartboost/sdk/impl/y;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "Content-Type"

    iget-object v1, v3, Lcom/chartboost/sdk/impl/y;->c:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    :try_start_3
    iget-object v0, v3, Lcom/chartboost/sdk/impl/y;->b:[B

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 156
    if-eqz v1, :cond_2

    .line 157
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    :cond_2
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v0

    .line 168
    :try_start_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v4

    .line 170
    :try_start_7
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v6

    .line 171
    sub-long v0, v6, v0

    iput-wide v0, p1, Lcom/chartboost/sdk/impl/x;->h:J

    .line 173
    const/4 v0, -0x1

    if-ne v4, v0, :cond_4

    .line 176
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 155
    :catchall_1
    move-exception v0

    move-object v1, v2

    .line 156
    :goto_2
    if-eqz v1, :cond_3

    .line 157
    :try_start_8
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 159
    :cond_3
    :goto_3
    :try_start_9
    throw v0

    .line 170
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v6

    .line 171
    sub-long v0, v6, v0

    iput-wide v0, p1, Lcom/chartboost/sdk/impl/x;->h:J

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 181
    :cond_4
    :try_start_a
    invoke-static {v4}, Lcom/chartboost/sdk/impl/ah;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 182
    iget-object v0, p1, Lcom/chartboost/sdk/impl/x;->f:Ljava/io/File;

    if-eqz v0, :cond_a

    .line 183
    new-instance v8, Ljava/io/File;

    iget-object v0, p1, Lcom/chartboost/sdk/impl/x;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/chartboost/sdk/impl/x;->f:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 189
    :try_start_b
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result-object v3

    .line 190
    :try_start_c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 191
    :try_start_d
    invoke-static {v3, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 194
    if-eqz v3, :cond_5

    .line 195
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 200
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 201
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 206
    :cond_6
    :goto_5
    :try_start_10
    iget-object v1, p1, Lcom/chartboost/sdk/impl/x;->f:Ljava/io/File;

    invoke-virtual {v8, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 207
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_9

    .line 208
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after failing to rename to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/x;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 236
    :catchall_3
    move-exception v0

    :try_start_11
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    sub-long/2addr v2, v6

    iput-wide v2, p1, Lcom/chartboost/sdk/impl/x;->i:J

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 193
    :catchall_4
    move-exception v0

    move-object v1, v2

    .line 194
    :goto_6
    if-eqz v1, :cond_7

    .line 195
    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 200
    :cond_7
    :goto_7
    if-eqz v2, :cond_8

    .line 201
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 203
    :cond_8
    :goto_8
    :try_start_14
    throw v0

    .line 209
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to move "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/x;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 215
    :cond_a
    :try_start_15
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move-result-object v2

    .line 219
    :goto_9
    if-eqz v2, :cond_c

    .line 220
    :try_start_16
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba;->b(Ljava/io/InputStream;)[B
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    move-result-object v0

    .line 226
    :goto_a
    if-eqz v2, :cond_b

    .line 227
    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 236
    :cond_b
    :goto_b
    :try_start_18
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    sub-long/2addr v2, v6

    iput-wide v2, p1, Lcom/chartboost/sdk/impl/x;->i:J

    .line 239
    new-instance v1, Lcom/chartboost/sdk/impl/aa;

    invoke-direct {v1, v4, v0}, Lcom/chartboost/sdk/impl/aa;-><init>(I[B)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 241
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 239
    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    :try_start_19
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_9

    .line 222
    :cond_c
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto :goto_a

    .line 225
    :catchall_5
    move-exception v0

    .line 226
    if-eqz v2, :cond_d

    .line 227
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 229
    :cond_d
    :goto_c
    :try_start_1b
    throw v0

    .line 233
    :cond_e
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    goto :goto_b

    .line 159
    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto/16 :goto_3

    .line 197
    :catch_3
    move-exception v2

    goto/16 :goto_4

    .line 203
    :catch_4
    move-exception v1

    goto/16 :goto_5

    .line 197
    :catch_5
    move-exception v1

    goto :goto_7

    .line 203
    :catch_6
    move-exception v1

    goto :goto_8

    .line 229
    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_c

    .line 193
    :catchall_6
    move-exception v0

    move-object v1, v3

    goto/16 :goto_6

    :catchall_7
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_6

    .line 155
    :catchall_8
    move-exception v0

    goto/16 :goto_2
.end method

.method private static a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    const/16 v2, 0x64

    if-gt v2, p0, :cond_0

    const/16 v2, 0xc8

    if-ge p0, v2, :cond_0

    move v2, v0

    .line 256
    :goto_0
    if-nez v2, :cond_1

    const/16 v2, 0xcc

    if-eq p0, v2, :cond_1

    const/16 v2, 0x130

    if-eq p0, v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 255
    goto :goto_0

    :cond_1
    move v0, v1

    .line 256
    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/ah;)I
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    iget v0, v0, Lcom/chartboost/sdk/impl/x;->d:I

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    iget v1, v1, Lcom/chartboost/sdk/impl/x;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/chartboost/sdk/impl/ah;, "Lcom/chartboost/sdk/impl/ah<TT;>;"
    check-cast p1, Lcom/chartboost/sdk/impl/ah;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/ah;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->g:Lcom/chartboost/sdk/impl/z;

    if-eqz v0, :cond_2

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->g:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/Model/CBError;

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->g:Lcom/chartboost/sdk/impl/z;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/z;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ah;->h:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/aa;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->g:Lcom/chartboost/sdk/impl/z;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/Model/CBError;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ah;->h:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/x;->a(Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/impl/aa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "deliver result"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->d:Lcom/chartboost/sdk/impl/ac;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/impl/x;)Lcom/chartboost/sdk/impl/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->h:Lcom/chartboost/sdk/impl/aa;

    .line 82
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->h:Lcom/chartboost/sdk/impl/aa;

    iget v0, v0, Lcom/chartboost/sdk/impl/aa;->a:I

    .line 83
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_3

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_3

    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->h:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/x;->a(Lcom/chartboost/sdk/impl/aa;)Lcom/chartboost/sdk/impl/z;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->g:Lcom/chartboost/sdk/impl/z;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/x;->g:J

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    iget v0, v0, Lcom/chartboost/sdk/impl/x;->j:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->f:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 86
    :cond_3
    :try_start_2
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure due to HTTP status code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/z;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->g:Lcom/chartboost/sdk/impl/z;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 92
    :try_start_3
    new-instance v1, Lcom/chartboost/sdk/Model/CBError;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/z;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->g:Lcom/chartboost/sdk/impl/z;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/x;->g:J

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    iget v0, v0, Lcom/chartboost/sdk/impl/x;->j:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->f:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 89
    :cond_4
    :try_start_4
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->b:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v4, "Internet Unavailable"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/impl/z;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->g:Lcom/chartboost/sdk/impl/z;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    iput-wide v2, v1, Lcom/chartboost/sdk/impl/x;->g:J

    .line 95
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->a:Lcom/chartboost/sdk/impl/x;

    iget v1, v1, Lcom/chartboost/sdk/impl/x;->j:I

    packed-switch v1, :pswitch_data_2

    .line 101
    :goto_2
    throw v0

    .line 100
    :pswitch_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 97
    :pswitch_4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->f:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 100
    :pswitch_5
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ah;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
