.class final Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
.super Ljava/lang/Object;
.source "InlineSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InlineSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InlineContentCallbackImpl"
.end annotation


# instance fields
.field private final mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private mFirstContentReceived:Z

.field private final mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

.field private final mMainHandler:Landroid/os/Handler;

.field private mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private mSurfacePackageConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/widget/inline/InlineContentView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/view/inline/IInlineContentProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/view/inline/IInlineContentProvider;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mFirstContentReceived:Z

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    iput-object p3, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method static synthetic access$000(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleGetSurfacePackage(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnSurfacePackageReleased()V

    return-void
.end method

.method private getSurfacePackageUpdater()Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;
    .registers 2

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$1;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$1;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    return-object v0
.end method

.method private handleGetSurfacePackage(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_8

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_8
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    :try_start_a
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentProvider;->requestSurfacePackage()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_2d

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling getSurfacePackage(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestion"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    :goto_2d
    return-void
.end method

.method private handleOnContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .registers 5

    iget-boolean v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mFirstContentReceived:Z

    if-nez v0, :cond_b

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnFirstContentReceived(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mFirstContentReceived:Z

    goto :goto_e

    :cond_b
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    :goto_e
    return-void
.end method

.method private handleOnFirstContentReceived(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .registers 6

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez p1, :cond_f

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$n8U3GjMW_nvrfe7Z6T3PZXOJb5o;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$n8U3GjMW_nvrfe7Z6T3PZXOJb5o;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_33

    :cond_f
    new-instance v0, Landroid/widget/inline/InlineContentView;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/inline/InlineContentView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/inline/InlineContentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->getSurfacePackageUpdater()Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/inline/InlineContentView;->setChildSurfacePackageUpdater(Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;)V

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$uxQy-Xvm9tEtpDfDJOobVwjMLjY;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$uxQy-Xvm9tEtpDfDJOobVwjMLjY;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_33
    return-void
.end method

.method private handleOnSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    if-nez v0, :cond_c

    goto :goto_1a

    :cond_c
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez p1, :cond_11

    return-void

    :cond_11
    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    :cond_19
    return-void

    :cond_1a
    :goto_1a
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    :try_start_1d
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentProvider;->onSurfacePackageReleased()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_3a

    :catch_23
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling onSurfacePackageReleased(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InlineSuggestion"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method private handleOnSurfacePackageReleased()V
    .registers 5

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    :try_start_5
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mInlineContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentProvider;->onSurfacePackageReleased()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_22

    :catch_b
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling onSurfacePackageReleased(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InlineSuggestion"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    :cond_24
    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mSurfacePackageConsumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public synthetic lambda$handleOnFirstContentReceived$1$InlineSuggestion$InlineContentCallbackImpl()V
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$handleOnFirstContentReceived$2$InlineSuggestion$InlineContentCallbackImpl()V
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onClick$3$InlineSuggestion$InlineContentCallbackImpl()V
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->callOnClick()Z

    :cond_f
    return-void
.end method

.method public synthetic lambda$onContent$0$InlineSuggestion$InlineContentCallbackImpl(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    return-void
.end method

.method public synthetic lambda$onLongClick$4$InlineSuggestion$InlineContentCallbackImpl()V
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->hasOnLongClickListeners()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mView:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->performLongClick()Z

    :cond_f
    return-void
.end method

.method public onClick()V
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$eBD70lfriFltBhoclpzNcJGZRdA;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$eBD70lfriFltBhoclpzNcJGZRdA;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .registers 6

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$1iQeV802Da0EJqlELwXcCuQIVdM;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$1iQeV802Da0EJqlELwXcCuQIVdM;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLongClick()V
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$kJ55cHQ8DrRkgYoKfUMf2DIhrBo;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$kJ55cHQ8DrRkgYoKfUMf2DIhrBo;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
