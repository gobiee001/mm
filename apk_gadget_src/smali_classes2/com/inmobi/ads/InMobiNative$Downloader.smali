.class public final Lcom/inmobi/ads/InMobiNative$Downloader;
.super Ljava/lang/Object;
.source "InMobiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Downloader"
.end annotation


# static fields
.field public static final STATE_DOWNLOADED:I = 0x1

.field public static final STATE_DOWNLOADING:I = 0x0

.field public static final STATE_ERROR:I = 0x2

.field public static final STATE_INITIALIZING:I = -0x1

.field public static final STATE_UNINITIALIZED:I = -0x2


# instance fields
.field final synthetic this$0:Lcom/inmobi/ads/InMobiNative;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiNative;)V
    .locals 0

    .prologue
    .line 934
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative$Downloader;->this$0:Lcom/inmobi/ads/InMobiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDownloadProgress()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 946
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 947
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InMobiNative is not initialized.Ignoring getDownloadProgress()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_0
    :goto_0
    return v0

    .line 952
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative$Downloader;->this$0:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative$Downloader;->this$0:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/ae;->M()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 956
    :catch_0
    move-exception v1

    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Encountered unexpected error in getting download progress"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getDownloadStatus()I
    .locals 4

    .prologue
    const/4 v0, -0x2

    .line 966
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 967
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InMobiNative is not initialized.Ignoring getDownloadStatus()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_0
    :goto_0
    return v0

    .line 972
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative$Downloader;->this$0:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative$Downloader;->this$0:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/ae;->N()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 976
    :catch_0
    move-exception v1

    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Encountered unexpected error in getting download progress"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
