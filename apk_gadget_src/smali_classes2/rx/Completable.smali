.class public Lrx/Completable;
.super Ljava/lang/Object;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Completable$Operator;,
        Lrx/Completable$OnSubscribe;
    }
.end annotation


# static fields
.field static final COMPLETE:Lrx/Completable;

.field static final NEVER:Lrx/Completable;


# instance fields
.field private final onSubscribe:Lrx/Completable$OnSubscribe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, Lrx/Completable;

    new-instance v1, Lrx/Completable$1;

    invoke-direct {v1}, Lrx/Completable$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;Z)V

    sput-object v0, Lrx/Completable;->COMPLETE:Lrx/Completable;

    .line 78
    new-instance v0, Lrx/Completable;

    new-instance v1, Lrx/Completable$2;

    invoke-direct {v1}, Lrx/Completable$2;-><init>()V

    invoke-direct {v0, v1, v2}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;Z)V

    sput-object v0, Lrx/Completable;->NEVER:Lrx/Completable;

    return-void
.end method

.method protected constructor <init>(Lrx/Completable$OnSubscribe;)V
    .locals 1
    .param p1, "onSubscribe"    # Lrx/Completable$OnSubscribe;

    .prologue
    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v0

    iput-object v0, p0, Lrx/Completable;->onSubscribe:Lrx/Completable$OnSubscribe;

    .line 1002
    return-void
.end method

.method protected constructor <init>(Lrx/Completable$OnSubscribe;Z)V
    .locals 0
    .param p1, "onSubscribe"    # Lrx/Completable$OnSubscribe;
    .param p2, "useHook"    # Z

    .prologue
    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    if-eqz p2, :cond_0

    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object p1

    .end local p1    # "onSubscribe":Lrx/Completable$OnSubscribe;
    :cond_0
    iput-object p1, p0, Lrx/Completable;->onSubscribe:Lrx/Completable$OnSubscribe;

    .line 1013
    return-void
.end method

.method public static create(Lrx/Completable$OnSubscribe;)Lrx/Completable;
    .locals 2
    .param p0, "onSubscribe"    # Lrx/Completable$OnSubscribe;

    .prologue
    .line 362
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :try_start_0
    new-instance v1, Lrx/Completable;

    invoke-direct {v1, p0}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 367
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 368
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 369
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v1

    throw v1
.end method

.method static deliverUncaughtException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2016
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2017
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 2018
    return-void
.end method

.method public static fromObservable(Lrx/Observable;)Lrx/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "flowable":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v0, Lrx/Completable$10;

    invoke-direct {v0, p0}, Lrx/Completable$10;-><init>(Lrx/Observable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 772
    .local p0, "o":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 775
    :cond_0
    return-object p0
.end method

.method static toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 828
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 829
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 830
    return-object v0
.end method


# virtual methods
.method public final subscribe()Lrx/Subscription;
    .locals 2

    .prologue
    .line 1887
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 1888
    .local v0, "mad":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v1, Lrx/Completable$27;

    invoke-direct {v1, p0, v0}, Lrx/Completable$27;-><init>(Lrx/Completable;Lrx/subscriptions/MultipleAssignmentSubscription;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 1907
    return-object v0
.end method

.method public final unsafeSubscribe(Lrx/CompletableSubscriber;)V
    .locals 3
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 2026
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    :try_start_0
    iget-object v2, p0, Lrx/Completable;->onSubscribe:Lrx/Completable$OnSubscribe;

    invoke-static {p0, v2}, Lrx/plugins/RxJavaHooks;->onCompletableStart(Lrx/Completable;Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v1

    .line 2030
    .local v1, "onSubscribeDecorated":Lrx/Completable$OnSubscribe;
    invoke-interface {v1, p1}, Lrx/Completable$OnSubscribe;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2039
    return-void

    .line 2031
    .end local v1    # "onSubscribeDecorated":Lrx/Completable$OnSubscribe;
    :catch_0
    move-exception v0

    .line 2032
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 2033
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2034
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 2035
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onCompletableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2036
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 2037
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v2

    throw v2
.end method
