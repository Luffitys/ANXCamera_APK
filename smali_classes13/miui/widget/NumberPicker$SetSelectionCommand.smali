.class Lmiui/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->this$0:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$402(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I
    .registers 2

    iput p1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$502(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I
    .registers 2

    iput p1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .registers 4

    iget v0, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    iget-object v1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v0, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lmiui/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_1b
    return-void
.end method
