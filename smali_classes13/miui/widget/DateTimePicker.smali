.class public Lmiui/widget/DateTimePicker;
.super Landroid/widget/LinearLayout;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DateTimePicker$PickerValueChangeListener;,
        Lmiui/widget/DateTimePicker$LunarFormatter;,
        Lmiui/widget/DateTimePicker$DayFormatter;,
        Lmiui/widget/DateTimePicker$SavedState;,
        Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DAYPICKER_ALL_ITEM_MAX_VALUE:I = 0x4

.field private static final DAYPICKER_WHEEL_ITEM_COUNT:I = 0x5

.field private static final DEFAULT_DAY_FORMATTER:Lmiui/widget/DateTimePicker$DayFormatter;

.field private static final DEFAULT_MINUTE_INTERVAL:I = 0x1

.field private static final HALF_WHEEL_ITEM_COUNT:I = 0x1

.field private static final sCalCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static sCalendarCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field


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
    .registers 1

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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/miui/internal/R$attr;->dateTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

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

    new-instance v4, Lmiui/widget/DateTimePicker$PickerValueChangeListener;

    invoke-direct {v4, p0, v1}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiui/widget/DateTimePicker;Lmiui/widget/DateTimePicker$1;)V

    move-object v1, v4

    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    iput-object v4, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v4, v0}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    sget-object v4, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/date/Calendar;

    if-nez v4, :cond_42

    new-instance v5, Lmiui/date/Calendar;

    invoke-direct {v5}, Lmiui/date/Calendar;-><init>()V

    move-object v4, v5

    sget-object v5, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_42
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    sget v5, Lcom/miui/internal/R$id;->day:I

    invoke-virtual {p0, v5}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmiui/widget/NumberPicker;

    iput-object v5, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    sget v5, Lcom/miui/internal/R$id;->hour:I

    invoke-virtual {p0, v5}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmiui/widget/NumberPicker;

    iput-object v5, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    sget v5, Lcom/miui/internal/R$id;->minute:I

    invoke-virtual {p0, v5}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmiui/widget/NumberPicker;

    iput-object v5, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v5, v6}, Lmiui/widget/NumberPicker;->setMaxFlingSpeedFactor(F)V

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    sget-object v6, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v5, v6}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    sget-object v5, Lcom/miui/internal/R$styleable;->DateTimePicker:[I

    invoke-virtual {p1, p2, v5, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v6, Lcom/miui/internal/R$styleable;->DateTimePicker_lunarCalendar:I

    invoke-virtual {v5, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/widget/DateTimePicker;->mIsLunarMode:Z

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->reorderLayout()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_b7

    invoke-virtual {p0, v0}, Lmiui/widget/DateTimePicker;->setImportantForAccessibility(I)V

    :cond_b7
    return-void
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Lmiui/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/widget/DateTimePicker;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    return-void
.end method

.method static synthetic access$1100(Lmiui/widget/DateTimePicker;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method

.method static synthetic access$1200(Lmiui/widget/DateTimePicker;)Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/widget/DateTimePicker;)I
    .registers 2

    iget v0, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    return v0
.end method

.method static synthetic access$302(Lmiui/widget/DateTimePicker;I)I
    .registers 2

    iput p1, p0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    return p1
.end method

.method static synthetic access$400(Lmiui/widget/DateTimePicker;)Lmiui/date/Calendar;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/DateTimePicker;)I
    .registers 2

    iget v0, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    return v0
.end method

.method static synthetic access$800(Lmiui/widget/DateTimePicker;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    return-void
.end method

.method static synthetic access$900(Lmiui/widget/DateTimePicker;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    return-void
.end method

.method private adjustCalendar(Lmiui/date/Calendar;Z)V
    .registers 6

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/16 v0, 0x15

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_21

    if-eqz p2, :cond_1d

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_21

    :cond_1d
    neg-int v2, v1

    invoke-virtual {p1, v0, v2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    :cond_21
    :goto_21
    return-void
.end method

.method private checkCurrentTime()V
    .registers 5

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_1d
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3a

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_3a
    return-void
.end method

.method private checkDisplayeValid(Lmiui/widget/NumberPicker;II)V
    .registers 7

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    array-length v1, v0

    sub-int v2, p3, p2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_11

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I
    .registers 13

    invoke-virtual {p1}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lmiui/date/Calendar;

    invoke-virtual {p2}, Lmiui/date/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Lmiui/date/Calendar;

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/16 v2, 0x14

    invoke-virtual {p1, v2, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/16 v3, 0x15

    invoke-virtual {p1, v3, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/16 v4, 0x16

    invoke-virtual {p1, v4, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    invoke-virtual {p2, v0, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    invoke-virtual {p2, v2, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    invoke-virtual {p2, v3, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    invoke-virtual {p2, v4, v1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    const-wide/16 v6, 0x18

    div-long/2addr v0, v6

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v8

    div-long/2addr v8, v2

    div-long/2addr v8, v4

    div-long/2addr v8, v4

    div-long/2addr v8, v6

    sub-long/2addr v0, v8

    long-to-int v0, v0

    return v0
.end method

.method private formatDay(III)Ljava/lang/String;
    .registers 7

    sget-object v0, Lmiui/widget/DateTimePicker;->DEFAULT_DAY_FORMATTER:Lmiui/widget/DateTimePicker$DayFormatter;

    iget-boolean v1, p0, Lmiui/widget/DateTimePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mLunarFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    if-nez v1, :cond_11

    new-instance v1, Lmiui/widget/DateTimePicker$LunarFormatter;

    invoke-direct {v1}, Lmiui/widget/DateTimePicker$LunarFormatter;-><init>()V

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mLunarFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    :cond_11
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mLunarFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    :cond_13
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDayFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    move-object v1, v0

    :goto_19
    invoke-virtual {v1, p1, p2, p3}, Lmiui/widget/DateTimePicker$DayFormatter;->formatDay(III)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private reorderLayout()V
    .registers 9

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    sget v4, Lcom/miui/internal/R$string;->fmt_time_12hour_minute:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "h"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-nez v1, :cond_27

    :cond_23
    if-nez v5, :cond_28

    if-nez v1, :cond_28

    :cond_27
    move v2, v3

    :cond_28
    if-eqz v2, :cond_40

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_40
    return-void
.end method

.method private updateDayPicker()V
    .registers 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    const v2, 0x7fffffff

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_11

    :cond_b
    iget-object v3, v0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {v0, v3, v1}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v1

    :goto_11
    iget-object v3, v0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    if-nez v3, :cond_16

    goto :goto_1c

    :cond_16
    iget-object v2, v0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {v0, v3, v2}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v2

    :goto_1c
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v4, :cond_46

    if-gt v2, v4, :cond_46

    iget-object v5, v0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    iget-object v6, v0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-direct {v0, v5, v6}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v5

    iget-object v6, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-direct {v0, v6, v3, v5}, Lmiui/widget/DateTimePicker;->checkDisplayeValid(Lmiui/widget/NumberPicker;II)V

    iget-object v6, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v3}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v6, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v5}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v6, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    iput v1, v0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    iget-object v6, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_7d

    :cond_46
    iget-object v5, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    const/4 v6, 0x4

    invoke-direct {v0, v5, v3, v6}, Lmiui/widget/DateTimePicker;->checkDisplayeValid(Lmiui/widget/NumberPicker;II)V

    iget-object v5, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v3}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v5, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v6}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    if-gt v1, v4, :cond_64

    iget-object v5, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    iput v1, v0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    iget-object v5, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_64
    if-gt v2, v4, :cond_74

    rsub-int/lit8 v5, v2, 0x4

    iput v5, v0, Lmiui/widget/DateTimePicker;->mDayLastValue:I

    iget-object v6, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v6, v5}, Lmiui/widget/NumberPicker;->setValue(I)V

    iget-object v5, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_74
    if-le v1, v4, :cond_7d

    if-le v2, v4, :cond_7d

    iget-object v3, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_7d
    :goto_7d
    iget-object v3, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v3

    iget-object v5, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v5

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    iget-object v5, v0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    if-eqz v5, :cond_92

    array-length v5, v5

    if-eq v5, v3, :cond_96

    :cond_92
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, v0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    :cond_96
    iget-object v5, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v5

    sget-object v6, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/date/Calendar;

    if-nez v6, :cond_b1

    new-instance v7, Lmiui/date/Calendar;

    invoke-direct {v7}, Lmiui/date/Calendar;-><init>()V

    move-object v6, v7

    sget-object v7, Lmiui/widget/DateTimePicker;->sCalCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_b1
    iget-object v7, v0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v7}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v7, v0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    invoke-virtual {v6, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    const/16 v11, 0x9

    invoke-virtual {v6, v11}, Lmiui/date/Calendar;->get(I)I

    move-result v12

    invoke-direct {v0, v8, v10, v12}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v7, 0x1

    :goto_d2
    const/16 v8, 0xc

    const/4 v10, 0x2

    if-gt v7, v10, :cond_f8

    invoke-virtual {v6, v8, v4}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    add-int v12, v5, v7

    rem-int/2addr v12, v9

    iget-object v13, v0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    array-length v14, v13

    if-lt v12, v14, :cond_e3

    goto :goto_f8

    :cond_e3
    invoke-virtual {v6, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v6, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v6, v11}, Lmiui/date/Calendar;->get(I)I

    move-result v14

    invoke-direct {v0, v8, v10, v14}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v13, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_d2

    :cond_f8
    :goto_f8
    iget-object v7, v0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v7}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    const/4 v7, 0x1

    :goto_102
    if-gt v7, v10, :cond_128

    const/4 v12, -0x1

    invoke-virtual {v6, v8, v12}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    sub-int v12, v5, v7

    add-int/2addr v12, v9

    rem-int/2addr v12, v9

    iget-object v13, v0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    array-length v14, v13

    if-lt v12, v14, :cond_112

    goto :goto_128

    :cond_112
    invoke-virtual {v6, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v6, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v6, v11}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    invoke-direct {v0, v14, v15, v4}, Lmiui/widget/DateTimePicker;->formatDay(III)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v12

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    goto :goto_102

    :cond_128
    :goto_128
    iget-object v4, v0, Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;

    iget-object v7, v0, Lmiui/widget/DateTimePicker;->mDayDisplayValues:[Ljava/lang/String;

    invoke-virtual {v4, v7}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    return-void
.end method

.method private updateHourPicker()V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    const/4 v2, 0x0

    const/16 v3, 0x12

    if-eqz v1, :cond_21

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v4, v1}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    const/4 v0, 0x1

    :cond_21
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-eqz v1, :cond_3e

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v4, v1}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v1}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    const/4 v0, 0x1

    :cond_3e
    if-nez v0, :cond_52

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_52
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method private updateMinutePicker()V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    const/16 v2, 0x14

    const/16 v3, 0x12

    const/4 v4, 0x0

    if-eqz v1, :cond_3a

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v5, v1}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    if-ne v1, v5, :cond_3a

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v4}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget v6, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int v6, v1, v6

    invoke-virtual {v5, v6}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v5, v4}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    const/4 v0, 0x1

    :cond_3a
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-eqz v1, :cond_69

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0, v5, v1}, Lmiui/widget/DateTimePicker;->computeDayCount(Lmiui/date/Calendar;Lmiui/date/Calendar;)I

    move-result v1

    if-nez v1, :cond_69

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v5, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_69

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget v5, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int v5, v1, v5

    invoke-virtual {v3, v5}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    const/4 v0, 0x1

    :cond_69
    const/4 v1, 0x1

    if-nez v0, :cond_8b

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget v5, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    const/16 v6, 0x3c

    div-int v5, v6, v5

    sub-int/2addr v5, v1

    invoke-direct {p0, v3, v4, v5}, Lmiui/widget/DateTimePicker;->checkDisplayeValid(Lmiui/widget/NumberPicker;II)V

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget v4, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int/2addr v6, v4

    sub-int/2addr v6, v1

    invoke-virtual {v3, v6}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_8b
    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    if-eqz v1, :cond_a0

    array-length v1, v1

    if-eq v1, v3, :cond_c5

    :cond_a0
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_a5
    if-ge v1, v3, :cond_be

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    sget-object v5, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    iget-object v6, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v6}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v6

    add-int/2addr v6, v1

    iget v7, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    mul-int/2addr v6, v7

    invoke-interface {v5, v6}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a5

    :cond_be
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mMinuteDisplayValues:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_c5
    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getTimeInMillis()J
    .registers 3

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lmiui/widget/DateTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lmiui/widget/DateTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/16 v0, 0x58c

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x58c

    invoke-static {v1, v2, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lmiui/widget/DateTimePicker$SavedState;

    invoke-virtual {v0}, Lmiui/widget/DateTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Lmiui/widget/DateTimePicker$SavedState;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lmiui/widget/DateTimePicker;->update(J)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiui/widget/DateTimePicker$SavedState;

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lmiui/widget/DateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;J)V

    return-object v1
.end method

.method public setDayFormatter(Lmiui/widget/DateTimePicker$DayFormatter;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DateTimePicker;->mDayFormatter:Lmiui/widget/DateTimePicker$DayFormatter;

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    return-void
.end method

.method public setLunarMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/DateTimePicker;->mIsLunarMode:Z

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    return-void
.end method

.method public setMaxDateTime(J)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    goto :goto_37

    :cond_a
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_37

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_37
    :goto_37
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method

.method public setMinDateTime(J)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    goto :goto_52

    :cond_a
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_29

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-eqz v0, :cond_30

    :cond_29
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    :cond_30
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_52

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_52
    :goto_52
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method

.method public setMinuteInterval(I)V
    .registers 4

    iget v0, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lmiui/widget/DateTimePicker;->mMinuteInterval:I

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method

.method public setOnTimeChangedListener(Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    return-void
.end method

.method public update(J)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/DateTimePicker;->adjustCalendar(Lmiui/date/Calendar;Z)V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->checkCurrentTime()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDayPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourPicker()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateMinutePicker()V

    return-void
.end method
