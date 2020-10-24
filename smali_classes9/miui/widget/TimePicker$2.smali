.class Lmiui/widget/TimePicker$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/TimePicker;


# direct methods
.method constructor <init>(Lmiui/widget/TimePicker;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .locals 1

    iget-object p1, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    invoke-virtual {p1}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    if-eq p3, p1, :cond_1

    :cond_0
    if-ne p2, p1, :cond_2

    if-ne p3, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->access$000(Lmiui/widget/TimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lmiui/widget/TimePicker;->access$002(Lmiui/widget/TimePicker;Z)Z

    iget-object p1, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->access$100(Lmiui/widget/TimePicker;)V

    :cond_2
    iget-object p0, p0, Lmiui/widget/TimePicker$2;->this$0:Lmiui/widget/TimePicker;

    invoke-static {p0}, Lmiui/widget/TimePicker;->access$200(Lmiui/widget/TimePicker;)V

    return-void
.end method
