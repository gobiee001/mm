.class public final Lcom/inmobi/commons/a/b;
.super Ljava/lang/Object;
.source "SdkInfo.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 25
    const-string v1, ""

    .line 1045
    const-string v0, "7.0.2"

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 28
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 29
    aget-char v3, v2, v1

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "T"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-char v3, v2, v1

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v3, v3, 0x41

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 37
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pr-SAND-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-20171211"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    const-string v0, "sdk_version_store"

    invoke-static {p0, v0}, Lcom/inmobi/commons/core/c/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 77
    const-string v0, "sdk_version_store"

    invoke-static {p0, v0}, Lcom/inmobi/commons/core/c/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "db_deletion_failed"

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Z)V

    .line 78
    return-void
.end method
