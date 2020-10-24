.class Lmiui/widget/TimePicker$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/TimePicker;


# direct methods
.method constructor <init>(Lmiui/widget/TimePicker;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/TimePicker$4;->this$0:Lmiui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lmiui/widget/TimePicker$4;->this$0:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->access$000(Lmiui/widget/TimePicker;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lmiui/widget/TimePicker;->access$002(Lmiui/widget/TimePicker;Z)Z

    iget-object p1, p0, Lmiui/widget/TimePicker$4;->this$0:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->access$100(Lmiui/widget/TimePicker;)V

    iget-object p0, p0, Lmiui/widget/TimePicker$4;->this$0:Lmiui/widget/TimePicker;

    invoke-static {p0}, Lmiui/widget/TimePicker;->access$200(Lmiui/widget/TimePicker;)V

    return-void
.end method
