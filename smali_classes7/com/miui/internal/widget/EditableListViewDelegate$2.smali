.class Lcom/miui/internal/widget/EditableListViewDelegate$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$2;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$2;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$000(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setTranslationX(F)V

    :cond_0
    return-void
.end method
