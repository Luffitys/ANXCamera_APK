.class Lmiui/app/DateTimePickerDialog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lmiui/app/DateTimePickerDialog;


# direct methods
.method constructor <init>(Lmiui/app/DateTimePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    invoke-static {p1}, Lmiui/app/DateTimePickerDialog;->access$000(Lmiui/app/DateTimePickerDialog;)Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    invoke-static {p1}, Lmiui/app/DateTimePickerDialog;->access$000(Lmiui/app/DateTimePickerDialog;)Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    move-result-object p1

    iget-object p0, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    invoke-static {p0}, Lmiui/app/DateTimePickerDialog;->access$100(Lmiui/app/DateTimePickerDialog;)Lmiui/widget/DateTimePicker;

    move-result-object p2

    invoke-virtual {p2}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lmiui/app/DateTimePickerDialog$OnTimeSetListener;->onTimeSet(Lmiui/app/DateTimePickerDialog;J)V

    :cond_0
    return-void
.end method
