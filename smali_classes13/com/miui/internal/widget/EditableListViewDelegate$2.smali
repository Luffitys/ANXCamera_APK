.class Lcom/miui/internal/widget/EditableListViewDelegate$2;
.super Ljava/lang/Object;
.source "EditableListViewDelegate.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$2;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$2;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # invokes: Lcom/miui/internal/widget/EditableListViewDelegate;->findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;
    invoke-static {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$000(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_11

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTranslationX(F)V

    :cond_11
    return-void
.end method
