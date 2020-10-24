.class Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {p3}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$100(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/ui/SeekBarCompat;->isCenterTwoWayMode()Z

    move-result p3

    if-eqz p3, :cond_0

    div-int/lit8 p3, p2, 0x2

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    const/4 v0, 0x0

    div-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0, p3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$200()I

    move-result p1

    if-eq p2, p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$300(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)I

    move-result p1

    sub-int p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p3, 0x5

    if-le p1, p3, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {p1, p2}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$302(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$4;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$000(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Lio/reactivex/FlowableEmitter;

    move-result-object p0

    div-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
