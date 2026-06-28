.class public Lcom/cuebiq/cuebiqsdk/model/comparator/InformationComparator;
.super Ljava/lang/Object;
.source "InformationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)I
    .locals 4
    .param p1, "lhs"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .param p2, "rhs"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 16
    const/4 v0, -0x1

    .line 20
    :goto_0
    return v0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 18
    const/4 v0, 0x1

    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    check-cast p2, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-virtual {p0, p1, p2}, Lcom/cuebiq/cuebiqsdk/model/comparator/InformationComparator;->compare(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)I

    move-result v0

    return v0
.end method
