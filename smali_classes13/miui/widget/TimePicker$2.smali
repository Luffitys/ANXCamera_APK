.class Lmiui/widget/TimePicker$2;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/TimePicker;


# direct methods
.method constructor <init>(Lmiui/widget/TimePicker;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .registers 6

    iget-object v0, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_24

    const/16 v0, 0xc

    const/16 v1, 0xb

    if-ne p2, v1, :cond_10

    if-eq p3, v0, :cond_14

    :cond_10
    if-ne p2, v0, :cond_24

    if-ne p3, v1, :cond_24

    :cond_14
    iget-object v0, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    # getter for: Lmiui/widget/TimePicker;->mIsAm:Z
    invoke-static {v0}, Lmiui/widget/TimePicker;->access$000(Lmiui/widget/TimePicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    # setter for: Lmiui/widget/TimePicker;->mIsAm:Z
    invoke-static {v0, v1}, Lmiui/widget/TimePicker;->access$002(Lmiui/widget/TimePicker;Z)Z

    iget-object v0, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    # invokes: Lmiui/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v0}, Lmiui/widget/TimePicker;->access$100(Lmiui/widget/TimePicker;)V

    :cond_24
    iget-object v0, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    # invokes: Lmiui/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Lmiui/widget/TimePicker;->access$200(Lmiui/widget/TimePicker;)V

    return-void
.end method
