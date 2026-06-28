.class Lio/topvpn/vpn_api/wget$connection_impl$1;
.super Ljava/lang/Thread;
.source "wget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget$connection_impl;-><init>(Lio/topvpn/vpn_api/wget;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/topvpn/vpn_api/wget$connection_impl;

.field final synthetic val$this$0:Lio/topvpn/vpn_api/wget;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/wget$connection_impl;Ljava/lang/String;Lio/topvpn/vpn_api/wget;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iput-object p3, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->val$this$0:Lio/topvpn/vpn_api/wget;

    iput-object p4, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->val$url:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 315
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->val$url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_url:Ljava/net/URL;

    .line 316
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v0}, Lio/topvpn/vpn_api/wget;->access$400(Lio/topvpn/vpn_api/wget;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    .line 317
    invoke-static {v0}, Lio/topvpn/vpn_api/wget;->access$500(Lio/topvpn/vpn_api/wget;)I

    move-result v0

    iget-object v3, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v3, v3, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v3}, Lio/topvpn/vpn_api/wget;->access$400(Lio/topvpn/vpn_api/wget;)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v3, v3, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v3}, Lio/topvpn/vpn_api/wget;->access$900(Lio/topvpn/vpn_api/wget;)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 319
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    sget-object v3, Lio/topvpn/vpn_api/zajax;->m_zagents:[Ljava/lang/String;

    iget-object v4, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v4, v4, Lio/topvpn/vpn_api/wget$connection_impl;->rand:Ljava/util/Random;

    sget-object v5, Lio/topvpn/vpn_api/zajax;->m_zagents:[Ljava/lang/String;

    array-length v5, v5

    .line 320
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v3, v3, v4

    .line 319
    invoke-static {v0, v3}, Lio/topvpn/vpn_api/wget;->access$202(Lio/topvpn/vpn_api/wget;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    const/16 v3, 0x56ce

    invoke-static {v0, v3}, Lio/topvpn/vpn_api/wget;->access$302(Lio/topvpn/vpn_api/wget;I)I

    .line 323
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v0}, Lio/topvpn/vpn_api/wget;->access$200(Lio/topvpn/vpn_api/wget;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 326
    :goto_0
    iget-object v3, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v4, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v4, v4, Lio/topvpn/vpn_api/wget$connection_impl;->m_url:Ljava/net/URL;

    invoke-virtual {v4, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnectionWithProxy(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v3, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    .line 327
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v0}, Lio/topvpn/vpn_api/wget;->access$1000(Lio/topvpn/vpn_api/wget;)[Lio/topvpn/vpn_api/wget$option;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v1, v3, v0

    .line 328
    iget-object v5, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    invoke-virtual {v1, v5}, Lio/topvpn/vpn_api/wget$option;->apply(Lio/topvpn/vpn_api/wget$connection_impl;)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 323
    :cond_1
    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v5, v5, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    .line 325
    invoke-static {v5}, Lio/topvpn/vpn_api/wget;->access$200(Lio/topvpn/vpn_api/wget;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v6, v6, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v6}, Lio/topvpn/vpn_api/wget;->access$300(Lio/topvpn/vpn_api/wget;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    :try_start_1
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_state:Lio/topvpn/vpn_api/wget$connection$state;

    sget-object v2, Lio/topvpn/vpn_api/wget$connection$state;->RUNNING:Lio/topvpn/vpn_api/wget$connection$state;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v1, v2, :cond_19

    .line 416
    :try_start_2
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8

    .line 421
    :cond_2
    :goto_2
    return-void

    .line 329
    :cond_3
    :try_start_3
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->val$url:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1}, Lio/topvpn/vpn_api/util;->cmd2url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    const-string v1, "Origin"

    const-string v3, "app://hola-ui"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_4
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget v1, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_timeout_ms:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 332
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget v1, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_timeout_ms:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 333
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_timeout_ms:I

    if-lez v0, :cond_5

    .line 334
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    sget-object v1, Lio/topvpn/vpn_api/wget$connection$state;->TIMEOUT:Lio/topvpn/vpn_api/wget$connection$state;

    iget-object v3, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-wide v4, v3, Lio/topvpn/vpn_api/wget$connection_impl;->m_start_ms:J

    iget-object v3, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget v3, v3, Lio/topvpn/vpn_api/wget$connection_impl;->m_timeout_ms:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Lio/topvpn/vpn_api/wget$connection_impl;->access$1100(Lio/topvpn/vpn_api/wget$connection_impl;Lio/topvpn/vpn_api/wget$connection$state;J)V

    .line 335
    :cond_5
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_req_body:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 337
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 338
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_req_body:Ljava/lang/String;

    .line 339
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 338
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 342
    :try_start_4
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 343
    :try_start_5
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_req_body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 345
    if-eqz v1, :cond_6

    .line 347
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 352
    :cond_6
    :goto_3
    :try_start_7
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_state:Lio/topvpn/vpn_api/wget$connection$state;

    sget-object v1, Lio/topvpn/vpn_api/wget$connection$state;->RUNNING:Lio/topvpn/vpn_api/wget$connection$state;
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eq v0, v1, :cond_8

    .line 416
    :try_start_8
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 418
    :catch_1
    move-exception v0

    .line 419
    const-string v0, "wget_m_conn_null"

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 345
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_7

    .line 347
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 348
    :cond_7
    :goto_5
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 402
    :catch_2
    move-exception v0

    .line 403
    :try_start_b
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_state:Lio/topvpn/vpn_api/wget$connection$state;

    sget-object v2, Lio/topvpn/vpn_api/wget$connection$state;->RUNNING:Lio/topvpn/vpn_api/wget$connection$state;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eq v1, v2, :cond_1a

    .line 416
    :try_start_c
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_2

    .line 418
    :catch_3
    move-exception v0

    .line 419
    const-string v0, "wget_m_conn_null"

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 355
    :cond_8
    :try_start_d
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v0

    move-object v1, v0

    .line 367
    :goto_6
    :try_start_e
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 369
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v0}, Lio/topvpn/vpn_api/wget;->access$800(Lio/topvpn/vpn_api/wget;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 370
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v0}, Lio/topvpn/vpn_api/wget;->access$800(Lio/topvpn/vpn_api/wget;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 371
    :cond_9
    const/16 v0, 0x1000

    new-array v0, v0, [B
    :try_end_e
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 374
    :goto_7
    :try_start_f
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_12

    iget-object v5, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v5, v5, Lio/topvpn/vpn_api/wget$connection_impl;->m_state:Lio/topvpn/vpn_api/wget$connection$state;

    sget-object v6, Lio/topvpn/vpn_api/wget$connection$state;->RUNNING:Lio/topvpn/vpn_api/wget$connection$state;

    if-ne v5, v6, :cond_12

    .line 376
    if-eqz v2, :cond_e

    .line 377
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_7

    .line 384
    :catch_4
    move-exception v0

    .line 385
    :try_start_10
    const-string v4, "inputstream_read_exception"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 387
    if-eqz v3, :cond_a

    .line 388
    :try_start_11
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 389
    :cond_a
    if-eqz v1, :cond_b

    .line 390
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 391
    :cond_b
    if-eqz v2, :cond_c

    .line 392
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 394
    :cond_c
    :goto_8
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_code:I

    .line 395
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_message:Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    sget-object v1, Lio/topvpn/vpn_api/wget$connection$state;->RESPONSE:Lio/topvpn/vpn_api/wget$connection$state;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lio/topvpn/vpn_api/wget$connection_impl;->access$1100(Lio/topvpn/vpn_api/wget$connection_impl;Lio/topvpn/vpn_api/wget$connection$state;J)V
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 416
    :try_start_12
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_2

    .line 418
    :catch_5
    move-exception v0

    .line 419
    const-string v0, "wget_m_conn_null"

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 356
    :catch_6
    move-exception v0

    .line 357
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 358
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.net.NetworkInterface"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 360
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getNetworkInterfacesList"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 364
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Android internal error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 415
    :catchall_1
    move-exception v0

    .line 416
    :try_start_14
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_d

    .line 417
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_b

    .line 419
    :cond_d
    :goto_9
    throw v0

    .line 379
    :cond_e
    const/4 v5, 0x0

    :try_start_15
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_7

    .line 387
    :catchall_2
    move-exception v0

    if-eqz v3, :cond_f

    .line 388
    :try_start_16
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 389
    :cond_f
    if-eqz v1, :cond_10

    .line 390
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 391
    :cond_10
    if-eqz v2, :cond_11

    .line 392
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_11
    throw v0
    :try_end_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 381
    :cond_12
    :try_start_17
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_state:Lio/topvpn/vpn_api/wget$connection$state;

    sget-object v4, Lio/topvpn/vpn_api/wget$connection$state;->RUNNING:Lio/topvpn/vpn_api/wget$connection$state;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    if-eq v0, v4, :cond_16

    .line 387
    if-eqz v3, :cond_13

    .line 388
    :try_start_18
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 389
    :cond_13
    if-eqz v1, :cond_14

    .line 390
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 391
    :cond_14
    if-eqz v2, :cond_15

    .line 392
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 416
    :cond_15
    :try_start_19
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_2

    .line 418
    :catch_7
    move-exception v0

    .line 419
    const-string v0, "wget_m_conn_null"

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 383
    :cond_16
    :try_start_1a
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_body:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 387
    if-eqz v3, :cond_17

    .line 388
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 389
    :cond_17
    if-eqz v1, :cond_18

    .line 390
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 391
    :cond_18
    if-eqz v2, :cond_c

    .line 392
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto/16 :goto_8

    .line 418
    :catch_8
    move-exception v0

    .line 419
    const-string v0, "wget_m_conn_null"

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 400
    :cond_19
    :try_start_1c
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iput-object v0, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_error:Ljava/io/IOException;

    .line 401
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    sget-object v1, Lio/topvpn/vpn_api/wget$connection$state;->TIMEOUT:Lio/topvpn/vpn_api/wget$connection$state;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lio/topvpn/vpn_api/wget$connection_impl;->access$1100(Lio/topvpn/vpn_api/wget$connection_impl;Lio/topvpn/vpn_api/wget$connection$state;J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 416
    :try_start_1d
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_9

    goto/16 :goto_2

    .line 418
    :catch_9
    move-exception v0

    .line 419
    const-string v0, "wget_m_conn_null"

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 405
    :cond_1a
    :try_start_1e
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iput-object v0, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_error:Ljava/io/IOException;

    .line 406
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_message:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 408
    :try_start_1f
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_code:I

    .line 409
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_code:I

    if-lez v0, :cond_1b

    .line 410
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v1, v1, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_message:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 413
    :cond_1b
    :goto_a
    :try_start_20
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_code:I

    if-lez v0, :cond_1c

    sget-object v0, Lio/topvpn/vpn_api/wget$connection$state;->RESPONSE:Lio/topvpn/vpn_api/wget$connection$state;

    :goto_b
    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lio/topvpn/vpn_api/wget$connection_impl;->access$1100(Lio/topvpn/vpn_api/wget$connection_impl;Lio/topvpn/vpn_api/wget$connection$state;J)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 416
    :try_start_21
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl$1;->this$1:Lio/topvpn/vpn_api/wget$connection_impl;

    iget-object v0, v0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_21
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_a

    goto/16 :goto_2

    .line 418
    :catch_a
    move-exception v0

    .line 419
    const-string v0, "wget_m_conn_null"

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 413
    :cond_1c
    :try_start_22
    sget-object v0, Lio/topvpn/vpn_api/wget$connection$state;->ERROR:Lio/topvpn/vpn_api/wget$connection$state;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    goto :goto_b

    .line 418
    :catch_b
    move-exception v1

    .line 419
    const-string v1, "wget_m_conn_null"

    invoke-static {v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;)I

    goto/16 :goto_9

    .line 348
    :catch_c
    move-exception v0

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_5

    .line 412
    :catch_e
    move-exception v0

    goto :goto_a

    .line 411
    :catch_f
    move-exception v0

    goto :goto_a

    .line 345
    :catchall_3
    move-exception v0

    goto/16 :goto_4

    :cond_1d
    move-object v1, v2

    goto/16 :goto_6
.end method
