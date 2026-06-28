.class public Lcom/cuebiq/cuebiqsdk/utils/WifiList;
.super Ljava/util/ArrayList;
.source "WifiList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;)Z
    .locals 2
    .param p1, "object"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;

    .prologue
    .line 17
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 18
    .local v0, "result":Z
    new-instance v1, Lcom/cuebiq/cuebiqsdk/model/comparator/WifiComparator;

    invoke-direct {v1}, Lcom/cuebiq/cuebiqsdk/model/comparator/WifiComparator;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;

    invoke-virtual {p0, p1}, Lcom/cuebiq/cuebiqsdk/utils/WifiList;->add(Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;)Z

    move-result v0

    return v0
.end method
