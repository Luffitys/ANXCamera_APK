.class Landroid/widget/TextInputTimePickerView$1;
.super Ljava/lang/Object;
.source "TextInputTimePickerView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextInputTimePickerView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/widget/TextInputTimePickerView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/TextInputTimePickerView$1;->this$0:Landroid/widget/TextInputTimePickerView;

    iput-object p2, p0, Landroid/widget/TextInputTimePickerView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView$1;->this$0:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/widget/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/widget/TextInputTimePickerView;->access$000(Landroid/widget/TextInputTimePickerView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2c

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView$1;->val$context:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView$1;->this$0:Landroid/widget/TextInputTimePickerView;

    # getter for: Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TextInputTimePickerView;->access$100(Landroid/widget/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2c
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
