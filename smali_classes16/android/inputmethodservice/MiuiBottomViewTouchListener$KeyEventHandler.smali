.class Landroid/inputmethodservice/MiuiBottomViewTouchListener$KeyEventHandler;
.super Landroid/os/Handler;
.source "MiuiBottomViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/MiuiBottomViewTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEventHandler"
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/MiuiBottomViewTouchListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener$KeyEventHandler;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Landroid/inputmethodservice/MiuiBottomViewTouchListener$KeyEventHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/MiuiBottomViewTouchListener;

    if-eqz v0, :cond_4b

    # operator++ for: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAutoMoveNumbers:I
    invoke-static {v0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$008(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)I

    const/16 v1, 0x50

    # getter for: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mAutoMoveNumbers:I
    invoke-static {v0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$000(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)I

    move-result v2

    const/16 v3, 0xf

    if-lt v2, v3, :cond_1c

    const/16 v1, 0x1e

    :cond_1c
    # getter for: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsAutoMoveLeft:Z
    invoke-static {v0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$100(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_34

    # invokes: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sendDownUpKeyEvents(I)V
    invoke-static {v0, v3}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$200(Landroid/inputmethodservice/MiuiBottomViewTouchListener;I)V

    # getter for: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$300(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Landroid/os/Handler;

    move-result-object v2

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4b

    :cond_34
    # getter for: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mIsAutoMoveRight:Z
    invoke-static {v0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$400(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_4b

    # invokes: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->sendDownUpKeyEvents(I)V
    invoke-static {v0, v3}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$200(Landroid/inputmethodservice/MiuiBottomViewTouchListener;I)V

    # getter for: Landroid/inputmethodservice/MiuiBottomViewTouchListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/inputmethodservice/MiuiBottomViewTouchListener;->access$300(Landroid/inputmethodservice/MiuiBottomViewTouchListener;)Landroid/os/Handler;

    move-result-object v2

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4b
    :goto_4b
    return-void
.end method
