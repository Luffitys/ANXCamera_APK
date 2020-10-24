.class public Lmiui/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source ""


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
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    new-instance p1, Lmiui/app/DatePickerDialog$1;

    invoke-direct {p1, p0}, Lmiui/app/DatePickerDialog$1;-><init>(Lmiui/app/DatePickerDialog;)V

    iput-object p1, p0, Lmiui/app/DatePickerDialog;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    iput-object p3, p0, Lmiui/app/DatePickerDialog;->mCallBack:Lmiui/app/DatePickerDialog$OnDateSetListener;

    new-instance p1, Lmiui/date/Calendar;

    invoke-direct {p1}, Lmiui/date/Calendar;-><init>()V

    iput-object p1, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance p3, Lmiui/app/DatePickerDialog$2;

    invoke-direct {p3, p0}, Lmiui/app/DatePickerDialog$2;-><init>(Lmiui/app/DatePickerDialog;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x1040000

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setIcon(I)V

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget p2, Lcom/miui/internal/R$layout;->date_picker_dialog:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    sget p2, Lcom/miui/internal/R$id;->datePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiui/widget/DatePicker;

    iput-object p2, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    iget-object p3, p0, Lmiui/app/DatePickerDialog;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {p2, p4, p5, p6, p3}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    invoke-direct {p0, p4, p5, p6}, Lmiui/app/DatePickerDialog;->updateTitle(III)V

    sget p2, Lcom/miui/internal/R$id;->lunarModePanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmiui/app/DatePickerDialog;->mLunarModePanel:Landroid/view/View;

    sget p2, Lcom/miui/internal/R$id;->datePickerLunar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiui/widget/SlidingButton;

    iput-object p1, p0, Lmiui/app/DatePickerDialog;->mLunarModeState:Lmiui/widget/SlidingButton;

    new-instance p2, Lmiui/app/OooO00o;

    invoke-direct {p2, p0}, Lmiui/app/OooO00o;-><init>(Lmiui/app/DatePickerDialog;)V

    invoke-virtual {p1, p2}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7

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

.method private synthetic OooO00o(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {p0, p2}, Lmiui/widget/DatePicker;->setLunarMode(Z)V

    return-void
.end method

.method static synthetic access$000(Lmiui/app/DatePickerDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return p0
.end method

.method static synthetic access$100(Lmiui/app/DatePickerDialog;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiui/app/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/DatePickerDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiui/app/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 4

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mCallBack:Lmiui/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mCallBack:Lmiui/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v1}, Lmiui/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {v3}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object p0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result p0

    invoke-interface {v0, v1, v2, v3, p0}, Lmiui/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lmiui/widget/DatePicker;III)V

    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 2

    iget-object v0, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    iget-object p1, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    iget-object p1, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    iget-object p1, p0, Lmiui/app/DatePickerDialog;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const/16 p3, 0x3780

    invoke-static {p1, p2, p3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/app/DatePickerDialog;->OooO00o(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public getDatePicker()Lmiui/widget/DatePicker;
    .locals 0

    iget-object p0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    return-object p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "miui:year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "miui:month"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "miui:day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    iget-object p0, p0, Lmiui/app/DatePickerDialog;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {v2, v0, v1, p1, p0}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

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

    iget-object p0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result p0

    const-string v1, "miui:day"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setLunarMode(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/DatePickerDialog;->mLunarModePanel:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method

.method public switchLunarState(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/app/DatePickerDialog;->mLunarModeState:Lmiui/widget/SlidingButton;

    invoke-virtual {p0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method public updateDate(III)V
    .locals 0

    iget-object p0, p0, Lmiui/app/DatePickerDialog;->mDatePicker:Lmiui/widget/DatePicker;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->updateDate(III)V

    return-void
.end method
