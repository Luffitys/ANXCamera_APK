.class Lmiui/external/widget/Spinner$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lmiui/external/widget/Spinner;


# direct methods
.method constructor <init>(Lmiui/external/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/widget/Spinner$1;->this$0:Lmiui/external/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lmiui/external/widget/Spinner$1;->this$0:Lmiui/external/widget/Spinner;

    invoke-static {v0}, Lmiui/external/widget/Spinner;->access$100(Lmiui/external/widget/Spinner;)Lmiui/external/widget/Spinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Lmiui/external/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/external/widget/Spinner$1;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {v0}, Lmiui/external/widget/Spinner;->showPopup()V

    :cond_0
    iget-object v0, p0, Lmiui/external/widget/Spinner$1;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
