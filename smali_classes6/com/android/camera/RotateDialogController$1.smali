.class Lcom/android/camera/RotateDialogController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/RotateDialogController;

.field final synthetic val$r1:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/RotateDialogController;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/RotateDialogController$1;->this$0:Lcom/android/camera/RotateDialogController;

    iput-object p2, p0, Lcom/android/camera/RotateDialogController$1;->val$r1:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/RotateDialogController$1;->val$r1:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/RotateDialogController$1;->this$0:Lcom/android/camera/RotateDialogController;

    invoke-virtual {p0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    return-void
.end method
