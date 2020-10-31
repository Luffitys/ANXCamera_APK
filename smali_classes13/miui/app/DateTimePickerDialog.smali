.class public Lmiui/app/DateTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "DateTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/DateTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private mLunarModePanel:Landroid/view/View;

.field private mLunarModeState:Lmiui/widget/SlidingButton;

.field private mTimeListener:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

.field private mTimePicker:Lmiui/widget/DateTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/DateTimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;I)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiui/app/DateTimePickerDialog;->mTimeListener:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    invoke-direct {p0, p3}, Lmiui/app/DateTimePickerDialog;->init(I)V

    sget v0, Lcom/miui/internal/R$string;->date_time_picker_dialog_title:I

    invoke-virtual {p0, v0}, Lmiui/app/DateTimePickerDialog;->setTitle(I)V

    return-void
.end method

.method static synthetic access$000(Lmiui/app/DateTimePickerDialog;)Lmiui/app/DateTimePickerDialog$OnTimeSetListener;
    .registers 2

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimeListener:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/app/DateTimePickerDialog;)Lmiui/widget/DateTimePicker;
    .registers 2

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    return-object v0
.end method

.method private init(I)V
    .registers 6

    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lmiui/app/DateTimePickerDialog$1;

    invoke-direct {v1, p0}, Lmiui/app/DateTimePickerDialog$1;-><init>(Lmiui/app/DateTimePickerDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lmiui/app/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v0, v2}, Lmiui/app/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    nop

    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v2, Lcom/miui/internal/R$layout;->datetime_picker_dialog:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/app/DateTimePickerDialog;->setView(Landroid/view/View;)V

    sget v2, Lcom/miui/internal/R$id;->dateTimePicker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/DateTimePicker;

    iput-object v2, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v2, p1}, Lmiui/widget/DateTimePicker;->setMinuteInterval(I)V

    sget v2, Lcom/miui/internal/R$id;->lunarModePanel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/DateTimePickerDialog;->mLunarModePanel:Landroid/view/View;

    sget v2, Lcom/miui/internal/R$id;->datePickerLunar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/SlidingButton;

    iput-object v2, p0, Lmiui/app/DateTimePickerDialog;->mLunarModeState:Lmiui/widget/SlidingButton;

    new-instance v3, Lmiui/app/-$$Lambda$DateTimePickerDialog$4CTaCtMksbT7WxsKfN1Rr6IrZ5I;

    invoke-direct {v3, p0}, Lmiui/app/-$$Lambda$DateTimePickerDialog$4CTaCtMksbT7WxsKfN1Rr6IrZ5I;-><init>(Lmiui/app/DateTimePickerDialog;)V

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$0$DateTimePickerDialog(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p2}, Lmiui/widget/DateTimePicker;->setLunarMode(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setLunarMode(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mLunarModePanel:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMaxDateTime(J)V
    .registers 4

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->setMaxDateTime(J)V

    return-void
.end method

.method public setMinDateTime(J)V
    .registers 4

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->setMinDateTime(J)V

    return-void
.end method

.method public switchLunarState(Z)V
    .registers 3

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mLunarModeState:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method public update(J)V
    .registers 4

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->update(J)V

    return-void
.end method
