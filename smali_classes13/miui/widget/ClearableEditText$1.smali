.class Lmiui/widget/ClearableEditText$1;
.super Ljava/lang/Object;
.source "ClearableEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ClearableEditText;


# direct methods
.method constructor <init>(Lmiui/widget/ClearableEditText;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    # getter for: Lmiui/widget/ClearableEditText;->mShown:Z
    invoke-static {v0}, Lmiui/widget/ClearableEditText;->access$000(Lmiui/widget/ClearableEditText;)Z

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eq v0, v1, :cond_32

    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    # getter for: Lmiui/widget/ClearableEditText;->mShown:Z
    invoke-static {v0}, Lmiui/widget/ClearableEditText;->access$000(Lmiui/widget/ClearableEditText;)Z

    move-result v1

    xor-int/2addr v1, v2

    # setter for: Lmiui/widget/ClearableEditText;->mShown:Z
    invoke-static {v0, v1}, Lmiui/widget/ClearableEditText;->access$002(Lmiui/widget/ClearableEditText;Z)Z

    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    invoke-virtual {v0}, Lmiui/widget/ClearableEditText;->refreshDrawableState()V

    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    # getter for: Lmiui/widget/ClearableEditText;->mAccessHelper:Lmiui/widget/ClearableEditText$AccessHelper;
    invoke-static {v0}, Lmiui/widget/ClearableEditText;->access$100(Lmiui/widget/ClearableEditText;)Lmiui/widget/ClearableEditText$AccessHelper;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lmiui/widget/ClearableEditText$1;->this$0:Lmiui/widget/ClearableEditText;

    # getter for: Lmiui/widget/ClearableEditText;->mAccessHelper:Lmiui/widget/ClearableEditText$AccessHelper;
    invoke-static {v0}, Lmiui/widget/ClearableEditText;->access$100(Lmiui/widget/ClearableEditText;)Lmiui/widget/ClearableEditText$AccessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/ClearableEditText$AccessHelper;->invalidateRoot()V

    :cond_32
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
