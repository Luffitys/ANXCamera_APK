.class public Lmiui/widget/DateTimePicker;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field private static final DAYPICKER_ALL_ITEM_MAX_VALUE:I = 0x4

.field private static final DAYPICKER_WHEEL_ITEM_COUNT:I = 0x5

.field private static final DEFAULT_DAY_FORMATTER:Lmiui/widget/DateTimePicker$DayFormatter;

.field private static final DEFAULT_MINUTE_INTERVAL:I = 0x1

.field private static final HALF_WHEEL_ITEM_COUNT:I = 0x1

.field private static final sCalCache:Ljava/lang/ThreadLocal;

.field private static sCalendarCache:Ljava/lang/ThreadLocal;


# instance fields
.field private mCalendar:Lmiui/date/Calendar;

.field mDayDisplayValues:[Ljava/lang/String;

.field private mDayFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

.field private mDayLastValue:I

.field private mDayPicker:Lmiui/widget/NumberPicker;

.field private mHourPicker:Lmiui/widget/NumberPicker;

.field private mIsLunarMode:Z

.field private mListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

.field private mLunarFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

.field private mMaxDate:Lmiui/date/Calendar;

.field private mMinDate:Lmiui/date/Calendar;

.field private mMinuteDisplayValues:[Ljava/lang/String;

.field private mMinuteInterval:I

.field private mMinutePicker:Lmiui/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/widget/DateTimePicker$DayFormatter;

    invoke-direct {v0}, Lmiui/widget/DateTimePicker$DayFormatter;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker;->DEFAULT_DAY_FORMATTER:Lmiui/widget/DateTimePicker$DayFormatter;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/miui/internal/R$attr;->dateTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/widget/DateTimePicker;->mIsLunarMode:Z

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    sget v4, Lcom/miui/internal/R$layout;->datetime_picker:I

    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v3, Lmiui/widget/DateTimePicker$PickerValueChangeListener;

    invoke-direct {v3, p0, v1}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiui/widget/DateTimePicker;Lmiui/widget/DateTimePicker$1;)V

    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v1, v0}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    sget-object v1, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/date/Calendar;

    if-nez v1, :cond_0

    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    sget-object v4, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    sget v1, Lcom/miui/internal/R$id;->day:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/NumberPicker;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    sget v1, Lcom/miui/internal/R$id;->hour:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/NumberPicker;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    sget v1, Lcom/miui/internal/R$id;->minute:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/NumberPicker;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v1, v4}, Lmiui/widget/NumberPicker;->setMaxFlingSpeedFactor(F)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    sget-object v3, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v1, v3}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    sget-object v1, Lcom/miui/internal/R$styleable;->DateTimePicker:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$styleable;->DateTimePicker_lunarCalendar:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiui/widget/DateTimePicker;->mIsLunarMode:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->reorderLayout()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lmiui/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/widget/DateTimePicker;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    return-void
.end method

.method static synthetic access$1100(Lmiui/widget/DateTimePicker;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method

.method static synthetic access$1200(Lmiui/widget/DateTimePicker;)Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$300(Lmiui/widget/DateTimePicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    return p0
.end method

.method static synthetic access$302(Lmiui/widget/DateTimePicker;I)I
    .locals 0

    iput p1, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    return p1
.end method

.method static synthetic access$400(Lmiui/widget/DateTimePicker;)Lmiui/date/Calendar;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    return-object p0
.end method

.method static synthetic access$500(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$600(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$700(Lmiui/widget/DateTimePicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    return p0
.end method

.method static synthetic access$800(Lmiui/widget/DateTimePicker;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    return-void
.end method

.method static synthetic access$900(Lmiui/widget/DateTimePicker;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    return-void
.end method

.method private adjustCalendar(Lmiui/date/Calendar;Z)V
    .locals 2

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/16 v0, 0x15

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget p0, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    rem-int/2addr v1, p0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    sub-int/2addr p0, v1

    goto :goto_0

    :cond_0
    neg-int p0, v1

    :goto_0
    invoke-virtual {p1, v0, p0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    :cond_1
    return-void
.end method

.method private checkCurrentTime()V
    .locals 4

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_1
    return-void
.end method

.method private checkDisplayeValid(Lmiui/widget/NumberPicker;II)V
    .locals 0

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p0, p0

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    if-ge p0, p3, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I
    .locals 8

    invoke-virtual {p1}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/date/Calendar;

    invoke-virtual {p2}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/date/Calendar;

    const/16 p2, 0x12

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/16 v2, 0x15

    invoke-virtual {p0, v2, v0}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/16 v3, 0x16

    invoke-virtual {p0, v3, v0}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    invoke-virtual {p1, p2, v0}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    invoke-virtual {p1, v1, v0}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    invoke-virtual {p1, v2, v0}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    invoke-virtual {p1, v3, v0}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    const-wide/16 v6, 0x18

    div-long/2addr v0, v6

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p0

    div-long/2addr p0, v2

    div-long/2addr p0, v4

    div-long/2addr p0, v4

    div-long/2addr p0, v6

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private formatDay(III)Ljava/lang/String;
    .locals 2

    sget-object v0, Lmiui/widget/DateTimePicker;->DEFAULT_DAY_FORMATTER:Lmiui/widget/DateTimePicker$DayFormatter;

    iget-boolean v1, p0, Lmiui/widget/DateTimePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mLunarFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/widget/DateTimePicker$LunarFormatter;

    invoke-direct {v0}, Lmiui/widget/DateTimePicker$LunarFormatter;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->mLunarFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mLunarFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    :cond_1
    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mDayFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    if-eqz p0, :cond_2

    move-object v0, p0

    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lmiui/widget/DateTimePicker$DayFormatter;->formatDay(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private reorderLayout()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget v4, Lcom/miui/internal/R$string;->fmt_time_12hour_minute:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "h"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method private updateDayPicker()V
    .locals 13

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    const v1, 0x7fffffff

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v2, v0}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v2, v1}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v1

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_2

    if-gt v1, v3, :cond_2

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-direct {p0, v1, v4}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v1

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v1}, Lmiui/widget/DateTimePicker;->checkDisplayeValid(Lmiui/widget/NumberPicker;II)V

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    iput v0, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    const/4 v5, 0x4

    invoke-direct {p0, v4, v2, v5}, Lmiui/widget/DateTimePicker;->checkDisplayeValid(Lmiui/widget/NumberPicker;II)V

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v5}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    if-gt v0, v3, :cond_3

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    iput v0, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_3
    if-gt v1, v3, :cond_4

    rsub-int/lit8 v4, v1, 0x4

    iput v4, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v4}, Lmiui/widget/NumberPicker;->setValue(I)V

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_4
    if-le v0, v3, :cond_5

    if-le v1, v3, :cond_5

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, v3

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-eq v1, v0, :cond_7

    :cond_6
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    sget-object v1, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/date/Calendar;

    if-nez v1, :cond_8

    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    sget-object v2, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_8
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    move v2, v3

    :goto_3
    const/16 v4, 0xc

    const/4 v6, 0x2

    if-gt v2, v6, :cond_a

    invoke-virtual {v1, v4, v3}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    add-int v8, v0, v2

    rem-int/2addr v8, v5

    iget-object v9, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    array-length v10, v9

    if-lt v8, v10, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    invoke-direct {p0, v4, v6, v10}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    move v2, v3

    :goto_5
    if-gt v2, v6, :cond_c

    const/4 v8, -0x1

    invoke-virtual {v1, v4, v8}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    sub-int v8, v0, v2

    add-int/2addr v8, v5

    rem-int/2addr v8, v5

    iget-object v9, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    array-length v10, v9

    if-lt v8, v10, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v1, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v1, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v12

    invoke-direct {p0, v10, v11, v12}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    return-void
.end method

.method private updateHourPicker()V
    .locals 6

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    const/4 v1, 0x1

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v4, v0}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v0}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v5, v4}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v0}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method private updateMinutePicker()V
    .locals 7

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    const/16 v1, 0x14

    const/16 v2, 0x12

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v5, v0}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v4}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget v6, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int/2addr v0, v6

    invoke-virtual {v5, v0}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v6, v5}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v5, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v6, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    if-ne v5, v2, :cond_1

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget v5, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int/2addr v0, v5

    invoke-virtual {v2, v0}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    move v0, v3

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget v2, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    const/16 v5, 0x3c

    div-int v2, v5, v2

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v4, v2}, Lmiui/widget/DateTimePicker;->checkDisplayeValid(Lmiui/widget/NumberPicker;II)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v4}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget v2, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int/2addr v5, v2

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v3

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    if-eqz v2, :cond_3

    array-length v2, v2

    if-eq v2, v0, :cond_5

    :cond_3
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    :goto_1
    if-ge v4, v0, :cond_4

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    sget-object v3, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    mul-int/2addr v5, v6

    invoke-interface {v3, v5}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int/2addr v0, v1

    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setValue(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getTimeInMillis()J
    .locals 2

    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Lmiui/widget/DateTimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Lmiui/widget/DateTimePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 p0, 0x58c

    invoke-static {v0, v1, p0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lmiui/widget/DateTimePicker$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lmiui/widget/DateTimePicker$SavedState;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DateTimePicker;->update(J)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiui/widget/DateTimePicker$SavedState;

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lmiui/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;J)V

    return-object v1
.end method

.method public setDayFormatter(Lmiui/widget/DateTimePicker$DayFormatter;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DateTimePicker;->mDayFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    return-void
.end method

.method public setLunarMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/DateTimePicker;->mIsLunarMode:Z

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    return-void
.end method

.method public setMaxDateTime(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    goto :goto_0

    :cond_0
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object p1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    iget-object p1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    iget-object p1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_1
    :goto_0
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method

.method public setMinDateTime(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    goto :goto_0

    :cond_0
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object p1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    const/16 v0, 0x14

    invoke-virtual {p1, v0, p2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    :cond_2
    iget-object p1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-direct {p0, p1, p2}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    iget-object p1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gez p1, :cond_3

    iget-object p1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_3
    :goto_0
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method

.method public setMinuteInterval(I)V
    .locals 1

    iget v0, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    iget-object p1, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method

.method public setOnTimeChangedListener(Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    return-void
.end method

.method public update(J)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object p1, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method
