.class Lcom/android/camera/fragment/FragmentMainContent$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentMainContent;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentMainContent;->access$000(Lcom/android/camera/fragment/FragmentMainContent;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {v1, p1, v0}, Lcom/android/camera/fragment/FragmentMainContent;->access$100(Lcom/android/camera/fragment/FragmentMainContent;Landroid/view/View;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0120

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    new-instance v1, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    const v2, 0x7f090040

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;->setDefaultSelect(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f100268

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/camera/fragment/FragmentMainContent$1$1;

    invoke-direct {v6, p0, v1, v0}, Lcom/android/camera/fragment/FragmentMainContent$1$1;-><init>(Lcom/android/camera/fragment/FragmentMainContent$1;Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkLocationAdapter;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1006cb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/camera/fragment/FragmentMainContent$1$2;

    invoke-direct {v8, p0}, Lcom/android/camera/fragment/FragmentMainContent$1$2;-><init>(Lcom/android/camera/fragment/FragmentMainContent$1;)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10012a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v4 .. v10}, Lcom/android/camera/RotateDialogController;->showLocationDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Landroid/view/View;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/FragmentMainContent;->access$002(Lcom/android/camera/fragment/FragmentMainContent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$1;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentMainContent;->access$000(Lcom/android/camera/fragment/FragmentMainContent;)Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent$1$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentMainContent$1$3;-><init>(Lcom/android/camera/fragment/FragmentMainContent$1;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
