.class Lmiui/widget/ClearableEditText$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lmiui/widget/ClearableEditText;


# direct methods
.method constructor <init>(Lmiui/widget/ClearableEditText;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {v0}, Lmiui/widget/ClearableEditText;->access$000(Lmiui/widget/ClearableEditText;)Z

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {p1}, Lmiui/widget/ClearableEditText;->access$000(Lmiui/widget/ClearableEditText;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lmiui/widget/ClearableEditText;->access$002(Lmiui/widget/ClearableEditText;Z)Z

    iget-object p1, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->refreshDrawableState()V

    iget-object p1, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {p1}, Lmiui/widget/ClearableEditText;->access$100(Lmiui/widget/ClearableEditText;)Lmiui/widget/ClearableEditText$AccessHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-static {p0}, Lmiui/widget/ClearableEditText;->access$100(Lmiui/widget/ClearableEditText;)Lmiui/widget/ClearableEditText$AccessHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
