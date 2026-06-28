.class final Lretrofit2/adapter/rxjava/RxJavaCallAdapter$CompletableHelper;
.super Ljava/lang/Object;
.source "RxJavaCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/RxJavaCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompletableHelper"
.end annotation


# direct methods
.method static toCompletable(Lrx/Observable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "observable":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-virtual {p0}, Lrx/Observable;->toCompletable()Lrx/Completable;

    move-result-object v0

    return-object v0
.end method
