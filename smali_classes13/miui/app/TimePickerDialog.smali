.class public Lmiui/app/TimePickerDialog;
.super Landroid/app/AlertDialog;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "miui:hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "miui:is24hour"

.field private static final MINUTE:Ljava/lang/String; = "miui:minute"


# instance fields
.field private final mCallback:Lmiui/app/TimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Lmiui/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .registers 13

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lmiui/app/TimePickerDialog;->mCallback:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    iput p4, p0, Lmiui/app/TimePickerDialog;->mInitialHourOfDay:I

    iput p5, p0, Lmiui/app/TimePickerDialog;->mInitialMinute:I

    iput-boolean p6, p0, Lmiui/app/TimePickerDialog;->mIs24HourView:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/TimePickerDialog;->setIcon(I)V

    sget v0, Lcom/miui/internal/R$string;->time_picker_dialog_title:I

    invoke-virtual {p0, v0}, Lmiui/app/TimePickerDialog;->setTitle(I)V

    invoke-virtual {p0}, Lmiui/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lmiui/app/TimePickerDialog$1;

    invoke-direct {v2, p0}, Lmiui/app/TimePickerDialog$1;-><init>(Lmiui/app/TimePickerDialog;)V

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1, v2}, Lmiui/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lmiui/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v1, v3}, Lmiui/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    nop

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v3, Lcom/miui/internal/R$layout;->time_picker_dialog:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmiui/app/TimePickerDialog;->setView(Landroid/view/View;)V

    sget v4, Lcom/miui/internal/R$id;->timePicker:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/TimePicker;

    iput-object v4, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    iget-boolean v5, p0, Lmiui/app/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v4, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    iget v5, p0, Lmiui/app/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v4, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    iget v5, p0, Lmiui/app/TimePickerDialog;->mInitialMinute:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object v4, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v4, v2}, Lmiui/widget/TimePicker;->setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .registers 13

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;ILmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-void
.end method

.method static synthetic access$000(Lmiui/app/TimePickerDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/TimePickerDialog;->tryNotifyTimeSet()V

    return-void
.end method

.method private tryNotifyTimeSet()V
    .registers 5

    iget-object v0, p0, Lmiui/app/TimePickerDialog;->mCallback:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Lmiui/widget/TimePicker;->clearFocus()V

    iget-object v0, p0, Lmiui/app/TimePickerDialog;->mCallback:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v1}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v3}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lmiui/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lmiui/widget/TimePicker;II)V

    :cond_22
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "miui:hour"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "miui:minute"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    const-string v3, "miui:is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v2, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v2, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v1}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "miui:hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v1}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "miui:minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-virtual {v1}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v1

    const-string v2, "miui:is24hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public updateTime(II)V
    .registers 5

    iget-object v0, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lmiui/app/TimePickerDialog;->mTimePicker:Lmiui/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method
