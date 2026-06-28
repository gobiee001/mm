.class public Lcom/cuebiq/cuebiqsdk/utils/InformationList;
.super Ljava/util/ArrayList;
.source "InformationList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)Z
    .locals 2
    .param p1, "object"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    .prologue
    .line 18
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 19
    .local v0, "result":Z
    new-instance v1, Lcom/cuebiq/cuebiqsdk/model/comparator/InformationComparator;

    invoke-direct {v1}, Lcom/cuebiq/cuebiqsdk/model/comparator/InformationComparator;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-virtual {p0, p1}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->add(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 26
    .local v0, "result":Z
    new-instance v1, Lcom/cuebiq/cuebiqsdk/model/comparator/InformationComparator;

    invoke-direct {v1}, Lcom/cuebiq/cuebiqsdk/model/comparator/InformationComparator;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    return v0
.end method

.method public getFirst()Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    return-object v0
.end method

.method public getLast()Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    return-object v0
.end method

.method public removeFirst()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->remove(I)Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/comparator/InformationComparator;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/comparator/InformationComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    return-void
.end method
