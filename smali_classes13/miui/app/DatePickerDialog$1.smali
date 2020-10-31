.class Lmiui/app/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Lmiui/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lmiui/app/DatePickerDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/DatePickerDialog$1;->this$0:Lmiui/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lmiui/widget/DatePicker;IIIZ)V
    .registers 7

    iget-object v0, p0, Lmiui/app/DatePickerDialog$1;->this$0:Lmiui/app/DatePickerDialog;

    # getter for: Lmiui/app/DatePickerDialog;->mTitleNeedsUpdate:Z
    invoke-static {v0}, Lmiui/app/DatePickerDialog;->access$000(Lmiui/app/DatePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/app/DatePickerDialog$1;->this$0:Lmiui/app/DatePickerDialog;

    # invokes: Lmiui/app/DatePickerDialog;->updateTitle(III)V
    invoke-static {v0, p2, p3, p4}, Lmiui/app/DatePickerDialog;->access$100(Lmiui/app/DatePickerDialog;III)V

    :cond_d
    return-void
.end method
