.class public Lmiui/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "miui:day"

.field private static final MONTH:Ljava/lang/String; = "miui:month"

.field private static final YEAR:Ljava/lang/String; = "miui:year"


# instance fields
.field private final mCalendar:Lmiui/date/Calendar;

.field private final mCallBack:Lmiui/app/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lmiui/widget/DatePicker;

.field private mLunarModePanel:Landroid/view/View;

.field private mLunarModeState:Lmiui/widget/SlidingButton;

.field private mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

.field private mTitleNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILmiui/app/DatePickerDialog$OnDateSetListener;III)V
    .registers 12

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    new-instance v0, Lmiui/app/DatePickerDialog$1;

    invoke-direct {v0, p0}, Lmiui/app/DatePickerDialog$1;-><init>(Lmiui/app/DatePickerDialog;)V

    iput-object v0, p0, Lmiui/app/DatePickerDialog;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    iput-object p3, p0, Lmiui/app/DatePickerDialog;->mCallBack:Lmiui/app/DatePickerDialog$OnDateSetListener;

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lmiui/app/DatePickerDialog$2;

    invoke-direct {v2, p0}, Lmiui/app/DatePickerDialog$2;-><init>(Lmiui/app/DatePickerDialog;)V

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1, v2}, Lmiui/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lmiui/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, -0x2

    invoke-virtual {p0, v4, v1, v3}, Lmiui/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/app/DatePickerDialog;->setIcon(I)V

    nop

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v3, Lcom/miui/internal/R$layout;->date_picker_dialog:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/app/DatePickerDialog;->setView(Landroid/view/View;)V

    sget v3, Lcom/miui/internal/R$id;->datePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/DatePicker;

    iput-object v3, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    iget-object v4, p0, Lmiui/app/DatePickerDialog;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {v3, p4, p5, p6, v4}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    invoke-direct {p0, p4, p5, p6}, Lmiui/app/DatePickerDialog;->updateTitle(III)V

    sget v3, Lcom/miui/internal/R$id;->lunarModePanel:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/DatePickerDialog;->mLunarModePanel:Landroid/view/View;

    sget v3, Lcom/miui/internal/R$id;->datePickerLunar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SlidingButton;

    iput-object v3, p0, Lmiui/app/DatePickerDialog;->mLunarModeState:Lmiui/widget/SlidingButton;

    new-instance v4, Lmiui/app/-$$Lambda$DatePickerDialog$CtEKbd3XiQD5JayA9yd1TEraNhk;

    invoke-direct {v4, p0}, Lmiui/app/-$$Lambda$DatePickerDialog$CtEKbd3XiQD5JayA9yd1TEraNhk;-><init>(Lmiui/app/DatePickerDialog;)V

    invoke-virtual {v3, v4}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/DatePickerDialog$OnDateSetListener;III)V
    .registers 13

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/app/DatePickerDialog;-><init>(Landroid/content/Context;ILmiui/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method static synthetic access$000(Lmiui/app/DatePickerDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return v0
.end method

.method static synthetic access$100(Lmiui/app/DatePickerDialog;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/app/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/DatePickerDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method private tryNotifyDateSet()V
    .registers 6

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mCallBack:Lmiui/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Lmiui/widget/DatePicker;->clearFocus()V

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mCallBack:Lmiui/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v1}, Lmiui/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v3}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v4}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lmiui/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lmiui/widget/DatePicker;III)V

    :cond_20
    return-void
.end method

.method private updateTitle(III)V
    .registers 7

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 v2, 0x3780

    invoke-static {v0, v1, v2}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDatePicker()Lmiui/widget/DatePicker;
    .registers 2

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    return-object v0
.end method

.method public synthetic lambda$new$0$DatePickerDialog(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v0, p2}, Lmiui/widget/DatePicker;->setLunarMode(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "miui:year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "miui:month"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "miui:day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    iget-object v4, p0, Lmiui/app/DatePickerDialog;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {v3, v0, v1, v2, v4}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v1}, Lmiui/widget/DatePicker;->getYear()I

    move-result v1

    const-string v2, "miui:year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v1}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v1

    const-string v2, "miui:month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v1}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    const-string v2, "miui:day"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setLunarMode(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mLunarModePanel:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method

.method public switchLunarState(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mLunarModeState:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method public updateDate(III)V
    .registers 5

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/widget/DatePicker;->updateDate(III)V

    return-void
.end method
