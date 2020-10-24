.class Lmiui/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NumberPicker$1;->this$0:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lmiui/widget/NumberPicker$1;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmiui/widget/NumberPicker$1;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p2}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    iget-object p0, p0, Lmiui/widget/NumberPicker$1;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {p0, p1}, Lmiui/widget/NumberPicker;->access$200(Lmiui/widget/NumberPicker;Landroid/view/View;)V

    :goto_0
    return-void
.end method
