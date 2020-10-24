.class Lmiui/app/DatePickerDialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/DatePicker$OnDateChangedListener;


# instance fields
.field final synthetic this$0:Lmiui/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lmiui/app/DatePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/app/DatePickerDialog$1;->this$0:Lmiui/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lmiui/widget/DatePicker;IIIZ)V
    .locals 0

    iget-object p1, p0, Lmiui/app/DatePickerDialog$1;->this$0:Lmiui/app/DatePickerDialog;

    invoke-static {p1}, Lmiui/app/DatePickerDialog;->access$000(Lmiui/app/DatePickerDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiui/app/DatePickerDialog$1;->this$0:Lmiui/app/DatePickerDialog;

    invoke-static {p0, p2, p3, p4}, Lmiui/app/DatePickerDialog;->access$100(Lmiui/app/DatePickerDialog;III)V

    :cond_0
    return-void
.end method
