.class Landroid/widget/YearPickerView$1;
.super Ljava/lang/Object;
.source "YearPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/YearPickerView;


# direct methods
.method constructor <init>(Landroid/widget/YearPickerView;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    # getter for: Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;
    invoke-static {v0}, Landroid/widget/YearPickerView;->access$000(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    # getter for: Landroid/widget/YearPickerView;->mAdapter:Landroid/widget/YearPickerView$YearAdapter;
    invoke-static {v1}, Landroid/widget/YearPickerView;->access$000(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/YearPickerView$YearAdapter;->setSelection(I)Z

    iget-object v1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    # getter for: Landroid/widget/YearPickerView;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;
    invoke-static {v1}, Landroid/widget/YearPickerView;->access$100(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$OnYearSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    # getter for: Landroid/widget/YearPickerView;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;
    invoke-static {v1}, Landroid/widget/YearPickerView;->access$100(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$OnYearSelectedListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    invoke-interface {v1, v2, v0}, Landroid/widget/YearPickerView$OnYearSelectedListener;->onYearChanged(Landroid/widget/YearPickerView;I)V

    :cond_26
    return-void
.end method
