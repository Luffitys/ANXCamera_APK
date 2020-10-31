.class public Lmiui/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/TimePicker$SavedState;,
        Lmiui/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Lmiui/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lmiui/widget/NumberPicker;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mHourSpinner:Lmiui/widget/NumberPicker;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lmiui/widget/NumberPicker;

.field private mOnTimeChangedListener:Lmiui/widget/TimePicker$OnTimeChangedListener;

.field private mTempCalendar:Lmiui/date/Calendar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/widget/TimePicker$1;

    invoke-direct {v0}, Lmiui/widget/TimePicker$1;-><init>()V

    sput-object v0, Lmiui/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiui/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->mIsEnabled:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    sget v1, Lcom/miui/internal/R$layout;->time_picker:I

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v3, Lcom/miui/internal/R$id;->hour:I

    invoke-virtual {p0, v3}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/NumberPicker;

    iput-object v3, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    new-instance v4, Lmiui/widget/TimePicker$2;

    invoke-direct {v4, p0}, Lmiui/widget/TimePicker$2;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {v3, v4}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v3, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    sget v4, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {v3, v4}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    sget v5, Lcom/miui/internal/R$id;->minute:I

    invoke-virtual {p0, v5}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmiui/widget/NumberPicker;

    iput-object v5, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v5, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    const/16 v7, 0x3b

    invoke-virtual {v5, v7}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v5, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v7, v8}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v5, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    sget-object v7, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v5, v7}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    iget-object v5, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    new-instance v7, Lmiui/widget/TimePicker$3;

    invoke-direct {v7, p0}, Lmiui/widget/TimePicker$3;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {v5, v7}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v5, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    sget v7, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {v5, v7}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    sget v4, Lcom/miui/internal/R$id;->amPm:I

    invoke-virtual {p0, v4}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v7, v4, Landroid/widget/Button;

    const/4 v8, 0x0

    if-eqz v7, :cond_8f

    iput-object v8, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    move-object v7, v4

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v8, Lmiui/widget/TimePicker$4;

    invoke-direct {v8, p0}, Lmiui/widget/TimePicker$4;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c3

    :cond_8f
    iput-object v8, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    move-object v7, v4

    check-cast v7, Lmiui/widget/NumberPicker;

    iput-object v7, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v7, v6}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v7, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v7, v0}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v7, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v7, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    new-instance v8, Lmiui/widget/TimePicker$5;

    invoke-direct {v8, p0}, Lmiui/widget/TimePicker$5;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v7, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    sget v8, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_c3
    invoke-direct {p0}, Lmiui/widget/TimePicker;->isAmPmAtStart()Z

    move-result v7

    if-eqz v7, :cond_d7

    sget v7, Lcom/miui/internal/R$id;->timePickerLayout:I

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v7, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_d7
    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateHourControl()V

    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateAmPmControl()V

    sget-object v7, Lmiui/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiui/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V

    iget-object v7, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v7, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_109

    invoke-virtual {p0, v6}, Lmiui/widget/TimePicker;->setEnabled(Z)V

    :cond_109
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getImportantForAccessibility()I

    move-result v6

    if-nez v6, :cond_112

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->setImportantForAccessibility(I)V

    :cond_112
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/TimePicker;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$002(Lmiui/widget/TimePicker;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/widget/TimePicker;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$200(Lmiui/widget/TimePicker;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method private isAmPmAtStart()Z
    .registers 4

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->fmt_time_12hour_pm:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    xor-int/lit8 v1, v0, 0x1

    move v0, v1

    :cond_22
    return v0
.end method

.method private onTimeChanged()V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mOnTimeChangedListener:Lmiui/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lmiui/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lmiui/widget/TimePicker;II)V

    :cond_1b
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lmiui/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object v0, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    if-nez v0, :cond_16

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    :cond_16
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .registers 6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method private updateAmPmControl()V
    .registers 5

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    goto :goto_3c

    :cond_10
    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3c

    :cond_16
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    iget-object v1, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    goto :goto_3c

    :cond_28
    iget-object v1, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3c
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    sget-object v1, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    goto :goto_2e

    :cond_1b
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .registers 2

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_11
    iget-boolean v1, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1c

    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_1c
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lmiui/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/16 v0, 0xc

    iget-boolean v1, p0, Lmiui/widget/TimePicker;->mIs24HourView:Z

    if-eqz v1, :cond_c

    or-int/lit8 v0, v0, 0x20

    goto :goto_e

    :cond_c
    or-int/lit8 v0, v0, 0x10

    :goto_e
    iget-object v1, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    const/16 v2, 0x12

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    const/16 v2, 0x14

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    move-object v0, p1

    check-cast v0, Lmiui/widget/TimePicker$SavedState;

    invoke-virtual {v0}, Lmiui/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Lmiui/widget/TimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lmiui/widget/TimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiui/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lmiui/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILmiui/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .registers 4

    if-eqz p1, :cond_4b

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4b

    :cond_d
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3b

    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_3b
    :goto_3b
    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateAmPmControl()V

    :cond_3e
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lmiui/widget/TimePicker;->onTimeChanged()V

    return-void

    :cond_4b
    :goto_4b
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .registers 4

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lmiui/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    goto :goto_1f

    :cond_1a
    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1f
    iput-boolean p1, p0, Lmiui/widget/TimePicker;->mIsEnabled:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .registers 4

    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateHourControl()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method public setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/TimePicker;->mOnTimeChangedListener:Lmiui/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method
