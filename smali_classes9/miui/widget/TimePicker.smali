.class public Lmiui/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source ""


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
    .locals 1

    new-instance v0, Lmiui/widget/TimePicker$1;

    invoke-direct {v0}, Lmiui/widget/TimePicker$1;-><init>()V

    sput-object v0, Lmiui/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiui/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lmiui/widget/TimePicker;->mIsEnabled:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lmiui/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    sget p3, Lcom/miui/internal/R$layout;->time_picker:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/miui/internal/R$id;->hour:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiui/widget/NumberPicker;

    iput-object p1, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    new-instance p3, Lmiui/widget/TimePicker$2;

    invoke-direct {p3, p0}, Lmiui/widget/TimePicker$2;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {p1, p3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object p1, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    sget p3, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    sget p1, Lcom/miui/internal/R$id;->minute:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiui/widget/NumberPicker;

    iput-object p1, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object p1, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object p1, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object p1, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    sget-object v1, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {p1, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    iget-object p1, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    new-instance v1, Lmiui/widget/TimePicker$3;

    invoke-direct {v1, p0}, Lmiui/widget/TimePicker$3;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {p1, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object p1, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    sget v1, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    sget p1, Lcom/miui/internal/R$id;->amPm:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of p3, p1, Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iput-object v1, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    move-object p3, p1

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v1, Lmiui/widget/TimePicker$4;

    invoke-direct {v1, p0}, Lmiui/widget/TimePicker$4;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    move-object p3, p1

    check-cast p3, Lmiui/widget/NumberPicker;

    iput-object p3, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p3, v0}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object p3, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p3, p2}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object p3, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object p3, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    new-instance v1, Lmiui/widget/TimePicker$5;

    invoke-direct {v1, p0}, Lmiui/widget/TimePicker$5;-><init>(Lmiui/widget/TimePicker;)V

    invoke-virtual {p3, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object p3, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    sget v1, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_0
    invoke-direct {p0}, Lmiui/widget/TimePicker;->isAmPmAtStart()Z

    move-result p3

    if-eqz p3, :cond_1

    sget p3, Lcom/miui/internal/R$id;->timePickerLayout:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p3, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateHourControl()V

    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateAmPmControl()V

    sget-object p1, Lmiui/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lmiui/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V

    iget-object p1, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    const/16 p3, 0x12

    invoke-virtual {p1, p3}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object p1, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    const/16 p3, 0x14

    invoke-virtual {p1, p3}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/TimePicker;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    return p0
.end method

.method static synthetic access$002(Lmiui/widget/TimePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/widget/TimePicker;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$200(Lmiui/widget/TimePicker;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method private isAmPmAtStart()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$string;->fmt_time_12hour_pm:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private onTimeChanged()V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mOnTimeChangedListener:Lmiui/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lmiui/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lmiui/widget/TimePicker;II)V

    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lmiui/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object p1, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    if-nez p1, :cond_1

    new-instance p1, Lmiui/date/Calendar;

    invoke-direct {p1}, Lmiui/date/Calendar;-><init>()V

    iput-object p1, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    :cond_1
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .locals 2

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object p0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    sget-object v0, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object p0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getBaseline()I
    .locals 0

    iget-object p0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    rem-int/lit8 v0, v0, 0xc

    if-eqz p0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public is24HourView()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/TimePicker;->mIs24HourView:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/TimePicker;->mIsEnabled:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lmiui/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Lmiui/widget/TimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Lmiui/widget/TimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
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

    iget-object p0, p0, Lmiui/widget/TimePicker;->mTempCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lmiui/widget/TimePicker$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lmiui/widget/TimePicker$SavedState;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lmiui/widget/TimePicker$SavedState;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiui/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, p0, v3}, Lmiui/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILmiui/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/TimePicker;->mIsAm:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateAmPmControl()V

    :cond_3
    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lmiui/widget/TimePicker;->onTimeChanged()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lmiui/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mMinuteSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mHourSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmSpinner:Lmiui/widget/NumberPicker;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iput-boolean p1, p0, Lmiui/widget/TimePicker;->mIsEnabled:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    iget-boolean v0, p0, Lmiui/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lmiui/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateHourControl()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    invoke-direct {p0}, Lmiui/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method public setOnTimeChangedListener(Lmiui/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/TimePicker;->mOnTimeChangedListener:Lmiui/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method
