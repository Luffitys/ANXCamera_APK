.class Lmiui/widget/TimePicker$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/TimePicker;


# direct methods
.method constructor <init>(Lmiui/widget/TimePicker;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/TimePicker$5;->this$0:Lmiui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object p1, p0, Lmiui/widget/TimePicker$5;->this$0:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->access$000(Lmiui/widget/TimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lmiui/widget/TimePicker;->access$002(Lmiui/widget/TimePicker;Z)Z

    iget-object p1, p0, Lmiui/widget/TimePicker$5;->this$0:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->access$100(Lmiui/widget/TimePicker;)V

    iget-object p0, p0, Lmiui/widget/TimePicker$5;->this$0:Lmiui/widget/TimePicker;

    invoke-static {p0}, Lmiui/widget/TimePicker;->access$200(Lmiui/widget/TimePicker;)V

    return-void
.end method
