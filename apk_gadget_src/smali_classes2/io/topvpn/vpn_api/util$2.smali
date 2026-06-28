.class final Lio/topvpn/vpn_api/util$2;
.super Ljava/lang/Object;
.source "util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/util;->zerr_printf(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lio/topvpn/vpn_api/util$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 390
    invoke-static {}, Lio/topvpn/vpn_api/util;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 391
    :try_start_0
    invoke-static {}, Lio/topvpn/vpn_api/util;->access$200()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/topvpn/vpn_api/util;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/topvpn/vpn_api/util$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 394
    monitor-exit v1

    .line 413
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-static {}, Lio/topvpn/vpn_api/util;->access$400()Ljava/io/FileWriter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 397
    monitor-exit v1

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 399
    :cond_1
    :try_start_1
    invoke-static {}, Lio/topvpn/vpn_api/util;->access$400()Ljava/io/FileWriter;

    move-result-object v0

    iget-object v2, p0, Lio/topvpn/vpn_api/util$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lio/topvpn/vpn_api/util;->access$400()Ljava/io/FileWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :goto_1
    :try_start_2
    sget-object v0, Lio/topvpn/vpn_api/util;->m_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x20000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 404
    invoke-static {}, Lio/topvpn/vpn_api/util;->zerr_uninit()V

    .line 405
    invoke-static {}, Lio/topvpn/vpn_api/util;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lio/topvpn/vpn_api/util;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 406
    sget-object v0, Lio/topvpn/vpn_api/util;->m_file:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/topvpn/vpn_api/util;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/app.log.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/topvpn/vpn_api/util;->file_move(Ljava/io/File;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    :goto_2
    :try_start_3
    new-instance v0, Ljava/io/FileWriter;

    sget-object v2, Lio/topvpn/vpn_api/util;->m_file:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->access$402(Ljava/io/FileWriter;)Ljava/io/FileWriter;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    :cond_2
    :goto_3
    :try_start_4
    monitor-exit v1

    goto :goto_0

    .line 408
    :cond_3
    sget-object v0, Lio/topvpn/vpn_api/util;->m_file:Ljava/io/File;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->access$500(Ljava/io/File;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 410
    :catch_0
    move-exception v0

    goto :goto_3

    .line 401
    :catch_1
    move-exception v0

    goto :goto_1
.end method
