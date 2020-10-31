.class final Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;
.super Landroid/view/autofill/IAutofillWindowPresenter$Stub;
.source "FillWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/FillWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FillWindowPresenter"
.end annotation


# instance fields
.field private final mFillWindowReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/autofill/augmented/FillWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/service/autofill/augmented/FillWindow;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->mFillWindowReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic lambda$hide$1(Ljava/lang/Object;)V
    .registers 2

    move-object v0, p0

    check-cast v0, Landroid/service/autofill/augmented/FillWindow;

    # invokes: Landroid/service/autofill/augmented/FillWindow;->handleHide()V
    invoke-static {v0}, Landroid/service/autofill/augmented/FillWindow;->access$200(Landroid/service/autofill/augmented/FillWindow;)V

    return-void
.end method

.method static synthetic lambda$show$0(Ljava/lang/Object;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/service/autofill/augmented/FillWindow;

    # invokes: Landroid/service/autofill/augmented/FillWindow;->handleShow(Landroid/view/WindowManager$LayoutParams;)V
    invoke-static {v0, p1}, Landroid/service/autofill/augmented/FillWindow;->access$300(Landroid/service/autofill/augmented/FillWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hide(Landroid/graphics/Rect;)V
    .registers 5

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_d

    # getter for: Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/service/autofill/augmented/FillWindow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillWindowPresenter.hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->mFillWindowReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/augmented/FillWindow;

    if-eqz v0, :cond_24

    # getter for: Landroid/service/autofill/augmented/FillWindow;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/autofill/augmented/FillWindow;->access$100(Landroid/service/autofill/augmented/FillWindow;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$EnBAJTZRgK05SBPnOQ9Edaq3VXs;->INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$EnBAJTZRgK05SBPnOQ9Edaq3VXs;

    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_24
    return-void
.end method

.method public show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .registers 8

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_d

    # getter for: Landroid/service/autofill/augmented/FillWindow;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/service/autofill/augmented/FillWindow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillWindowPresenter.show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->mFillWindowReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/augmented/FillWindow;

    if-eqz v0, :cond_24

    # getter for: Landroid/service/autofill/augmented/FillWindow;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/autofill/augmented/FillWindow;->access$100(Landroid/service/autofill/augmented/FillWindow;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$hdkNZGuYdsvcArvQ2SoMspO1EO8;->INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$hdkNZGuYdsvcArvQ2SoMspO1EO8;

    invoke-static {v2, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_24
    return-void
.end method
