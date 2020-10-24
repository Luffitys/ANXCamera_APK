.class Lcom/android/camera/fragment/top/TopExpendView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/TopExpendView;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/TopExpendView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView$1;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpendView$1;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/TopExpendView$1;->this$0:Lcom/android/camera/fragment/top/TopExpendView;

    invoke-static {p0}, Lcom/android/camera/fragment/top/TopExpendView;->access$000(Lcom/android/camera/fragment/top/TopExpendView;)V

    return-void
.end method
