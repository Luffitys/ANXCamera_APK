.class Lmiui/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/NumberPicker$1;->this$0:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-eqz p2, :cond_c

    iget-object v0, p0, Lmiui/widget/NumberPicker$1;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1b

    :cond_c
    iget-object v0, p0, Lmiui/widget/NumberPicker$1;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    iget-object v0, p0, Lmiui/widget/NumberPicker$1;->this$0:Lmiui/widget/NumberPicker;

    # invokes: Lmiui/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v0, p1}, Lmiui/widget/NumberPicker;->access$200(Lmiui/widget/NumberPicker;Landroid/view/View;)V

    :goto_1b
    return-void
.end method
