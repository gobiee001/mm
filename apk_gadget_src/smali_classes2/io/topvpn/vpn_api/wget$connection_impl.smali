.class final Lio/topvpn/vpn_api/wget$connection_impl;
.super Ljava/lang/Object;
.source "wget.java"

# interfaces
.implements Lio/topvpn/vpn_api/wget$connection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/wget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "connection_impl"
.end annotation


# instance fields
.field m_conn:Ljava/net/HttpURLConnection;

.field m_end_ms:J

.field m_error:Ljava/io/IOException;

.field m_req_body:Ljava/lang/String;

.field m_res_body:Ljava/lang/String;

.field m_res_code:I

.field m_res_message:Ljava/lang/String;

.field m_start_ms:J

.field m_state:Lio/topvpn/vpn_api/wget$connection$state;

.field m_thread:Ljava/lang/Thread;

.field m_timeout_ms:I

.field m_url:Ljava/net/URL;

.field rand:Ljava/util/Random;

.field final synthetic this$0:Lio/topvpn/vpn_api/wget;


# direct methods
.method public constructor <init>(Lio/topvpn/vpn_api/wget;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    iput-object p1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    sget-object v0, Lio/topvpn/vpn_api/wget$connection$state;->RUNNING:Lio/topvpn/vpn_api/wget$connection$state;

    iput-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_state:Lio/topvpn/vpn_api/wget$connection$state;

    .line 301
    const/16 v0, 0x7530

    iput v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_timeout_ms:I

    .line 302
    iput-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_req_body:Ljava/lang/String;

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_code:I

    .line 304
    const-string v0, ""

    iput-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_message:Ljava/lang/String;

    .line 305
    iput-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_body:Ljava/lang/String;

    .line 306
    iput-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_error:Ljava/io/IOException;

    .line 307
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v0

    iput-wide v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_start_ms:J

    .line 308
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_end_ms:J

    .line 309
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->rand:Ljava/util/Random;

    .line 312
    new-instance v0, Lio/topvpn/vpn_api/wget$connection_impl$1;

    invoke-direct {v0, p0, p2, p1, p2}, Lio/topvpn/vpn_api/wget$connection_impl$1;-><init>(Lio/topvpn/vpn_api/wget$connection_impl;Ljava/lang/String;Lio/topvpn/vpn_api/wget;Ljava/lang/String;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_thread:Ljava/lang/Thread;

    .line 423
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 424
    return-void
.end method

.method static synthetic access$1100(Lio/topvpn/vpn_api/wget$connection_impl;Lio/topvpn/vpn_api/wget$connection$state;J)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0, p1, p2, p3}, Lio/topvpn/vpn_api/wget$connection_impl;->report(Lio/topvpn/vpn_api/wget$connection$state;J)V

    return-void
.end method

.method static synthetic access$1500(Lio/topvpn/vpn_api/wget$connection_impl;Lio/topvpn/vpn_api/wget$connection$state;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/wget$connection_impl;->onreport(Lio/topvpn/vpn_api/wget$connection$state;)V

    return-void
.end method

.method private declared-synchronized onreport(Lio/topvpn/vpn_api/wget$connection$state;)V
    .locals 6

    .prologue
    const/4 v0, 0x3

    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_state:Lio/topvpn/vpn_api/wget$connection$state;

    sget-object v2, Lio/topvpn/vpn_api/wget$connection$state;->RUNNING:Lio/topvpn/vpn_api/wget$connection$state;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    .line 454
    :goto_0
    monitor-exit p0

    return-void

    .line 429
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_end_ms:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 430
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v2

    iput-wide v2, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_end_ms:J

    .line 431
    :cond_1
    iput-object p1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_state:Lio/topvpn/vpn_api/wget$connection$state;

    .line 432
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 433
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v1}, Lio/topvpn/vpn_api/wget;->access$1200(Lio/topvpn/vpn_api/wget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 434
    sget-object v1, Lio/topvpn/vpn_api/wget$19;->$SwitchMap$io$topvpn$vpn_api$wget$connection$state:[I

    iget-object v2, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_state:Lio/topvpn/vpn_api/wget$connection$state;

    invoke-virtual {v2}, Lio/topvpn/vpn_api/wget$connection$state;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 453
    :goto_1
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v0, p0}, Lio/topvpn/vpn_api/wget;->access$1400(Lio/topvpn/vpn_api/wget;Lio/topvpn/vpn_api/wget$connection_impl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 437
    :pswitch_0
    :try_start_2
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    iget v2, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_code:I

    const/16 v3, 0x190

    if-lt v2, v3, :cond_2

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 439
    invoke-virtual {p0}, Lio/topvpn/vpn_api/wget$connection_impl;->get_duration_ms()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-static {v1, v0, v2}, Lio/topvpn/vpn_api/wget;->access$1300(Lio/topvpn/vpn_api/wget;ILjava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    goto :goto_2

    .line 442
    :pswitch_1
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_error:Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/topvpn/vpn_api/wget$connection_impl;->get_duration_ms()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/wget;->access$1300(Lio/topvpn/vpn_api/wget;ILjava/lang/String;)I

    goto :goto_1

    .line 445
    :pswitch_2
    const-string v0, "Timeout"

    iput-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_message:Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMEOUT ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/topvpn/vpn_api/wget$connection_impl;->get_duration_ms()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/wget;->access$1300(Lio/topvpn/vpn_api/wget;ILjava/lang/String;)I

    goto/16 :goto_1

    .line 449
    :pswitch_3
    const-string v0, "Canceled"

    iput-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_message:Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CANCELED ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/topvpn/vpn_api/wget$connection_impl;->get_duration_ms()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/wget;->access$1300(Lio/topvpn/vpn_api/wget;ILjava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private report(Lio/topvpn/vpn_api/wget$connection$state;J)V
    .locals 4

    .prologue
    .line 457
    new-instance v0, Lio/topvpn/vpn_api/wget$connection_impl$2;

    invoke-direct {v0, p0, p1}, Lio/topvpn/vpn_api/wget$connection_impl$2;-><init>(Lio/topvpn/vpn_api/wget$connection_impl;Lio/topvpn/vpn_api/wget$connection$state;)V

    .line 460
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v1}, Lio/topvpn/vpn_api/wget;->access$1600(Lio/topvpn/vpn_api/wget;)V

    .line 461
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v1}, Lio/topvpn/vpn_api/wget;->access$1200(Lio/topvpn/vpn_api/wget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 465
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v1}, Lio/topvpn/vpn_api/wget;->access$1200(Lio/topvpn/vpn_api/wget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public as_json()Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 483
    :try_start_0
    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_body:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v1, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_body:Ljava/lang/String;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 486
    :cond_0
    :goto_0
    return-object v0

    .line 484
    :catch_0
    move-exception v1

    .line 485
    iget-object v2, p0, Lio/topvpn/vpn_api/wget$connection_impl;->this$0:Lio/topvpn/vpn_api/wget;

    const/4 v3, 0x3

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lio/topvpn/vpn_api/wget;->access$1300(Lio/topvpn/vpn_api/wget;ILjava/lang/String;)I

    goto :goto_0
.end method

.method public as_string()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_body:Ljava/lang/String;

    return-object v0
.end method

.method public get_code()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_code:I

    return v0
.end method

.method public get_duration_ms()J
    .locals 4

    .prologue
    .line 472
    iget-wide v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_end_ms:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 474
    :cond_0
    iget-wide v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_end_ms:J

    iget-wide v2, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_start_ms:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public get_error()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_error:Ljava/io/IOException;

    return-object v0
.end method

.method public get_header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_code:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get_header_fields()Ljava/util/Map;
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_code:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get_message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_res_message:Ljava/lang/String;

    return-object v0
.end method

.method public get_state()Lio/topvpn/vpn_api/wget$connection$state;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$connection_impl;->m_state:Lio/topvpn/vpn_api/wget$connection$state;

    return-object v0
.end method
