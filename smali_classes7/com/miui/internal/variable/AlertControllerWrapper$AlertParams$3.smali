.class Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

.field final synthetic val$impl:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Lcom/miui/internal/app/AlertControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;->val$impl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;->val$impl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p2}, Lcom/miui/internal/app/AlertControllerImpl;->getDialogInterface()Landroid/content/DialogInterface;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-boolean p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$3;->val$impl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p0}, Lcom/miui/internal/app/AlertControllerImpl;->getDialogInterface()Landroid/content/DialogInterface;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
