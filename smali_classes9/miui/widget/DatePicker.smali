.class public Lmiui/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = false

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sChineseDays:[Ljava/lang/String;

.field private static final sChineseLeapMonthMark:Ljava/lang/String;

.field private static final sChineseLeapYearMonths:[Ljava/lang/String;

.field private static final sChineseMonths:[Ljava/lang/String;


# instance fields
.field private mCurrentDate:Lmiui/date/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDateFormatOrder:[C

.field private final mDaySpinner:Lmiui/widget/NumberPicker;

.field private mIsEnabled:Z

.field private mIsLunarMode:Z

.field private mMaxDate:Lmiui/date/Calendar;

.field private mMinDate:Lmiui/date/Calendar;

.field private final mMonthSpinner:Lmiui/widget/NumberPicker;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Lmiui/date/Calendar;

.field private final mYearSpinner:Lmiui/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/internal/R$string;->chinese_month:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lmiui/widget/DatePicker;->sChineseLeapYearMonths:[Ljava/lang/String;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    sput-object v0, Lmiui/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/miui/internal/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lmiui/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lmiui/widget/DatePicker;->mIsEnabled:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    new-instance v4, Lmiui/date/Calendar;

    invoke-direct {v4}, Lmiui/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    sget-object v4, Lcom/miui/internal/R$styleable;->DatePicker:[I

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual {v1, v5, v4, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v5, Lcom/miui/internal/R$styleable;->DatePicker_spinnersShown:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    sget v6, Lcom/miui/internal/R$styleable;->DatePicker_startYear:I

    const/16 v7, 0x76c

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    sget v6, Lcom/miui/internal/R$styleable;->DatePicker_endYear:I

    const/16 v7, 0x834

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    sget v7, Lcom/miui/internal/R$styleable;->DatePicker_minDate:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/miui/internal/R$styleable;->DatePicker_maxDate:I

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget v8, Lcom/miui/internal/R$layout;->date_picker:I

    sget v10, Lcom/miui/internal/R$styleable;->DatePicker_lunarCalendar:I

    invoke-virtual {v4, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    sget v10, Lcom/miui/internal/R$styleable;->DatePicker_showYear:I

    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    sget v11, Lcom/miui/internal/R$styleable;->DatePicker_showMonth:I

    invoke-virtual {v4, v11, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    sget v12, Lcom/miui/internal/R$styleable;->DatePicker_showDay:I

    invoke-virtual {v4, v12, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v4}, Lmiui/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    const-string v4, "layout_inflater"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lmiui/widget/DatePicker$1;

    invoke-direct {v1, v0}, Lmiui/widget/DatePicker$1;-><init>(Lmiui/widget/DatePicker;)V

    sget v4, Lcom/miui/internal/R$id;->pickers:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    sget v4, Lcom/miui/internal/R$id;->day:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/NumberPicker;

    iput-object v4, v0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    const-wide/16 v13, 0x64

    invoke-virtual {v4, v13, v14}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v4, v0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v4, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    const/16 v4, 0x8

    if-nez v12, :cond_0

    iget-object v8, v0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    sget v8, Lcom/miui/internal/R$id;->month:I

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lmiui/widget/NumberPicker;

    iput-object v8, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v3}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v3, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget v8, v0, Lmiui/widget/DatePicker;->mNumberOfMonths:I

    sub-int/2addr v8, v2

    invoke-virtual {v3, v8}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v3, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-object v8, v0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v3, v8}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v3, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    const-wide/16 v13, 0xc8

    invoke-virtual {v3, v13, v14}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v3, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    if-nez v11, :cond_1

    iget-object v3, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    sget v3, Lcom/miui/internal/R$id;->year:I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/NumberPicker;

    iput-object v3, v0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    const-wide/16 v11, 0x64

    invoke-virtual {v3, v11, v12}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v3, v0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v1}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    if-nez v10, :cond_2

    iget-object v1, v0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lmiui/widget/DatePicker;->updateFormatters()V

    if-nez v5, :cond_3

    invoke-virtual {v0, v2}, Lmiui/widget/DatePicker;->setSpinnersShown(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v5}, Lmiui/widget/DatePicker;->setSpinnersShown(Z)V

    :goto_0
    iget-object v1, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-direct {v0, v7, v1}, Lmiui/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiui/date/Calendar;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v8, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    move-object v5, v15

    move v15, v1

    goto :goto_1

    :cond_4
    move-object v5, v15

    goto :goto_2

    :cond_5
    move-object v5, v15

    iget-object v8, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    invoke-virtual/range {v8 .. v15}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    :goto_2
    iget-object v1, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lmiui/widget/DatePicker;->setMinDate(J)V

    iget-object v1, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v3, v4}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-direct {v0, v5, v1}, Lmiui/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiui/date/Calendar;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v10, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/16 v12, 0xb

    const/16 v13, 0x1f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v11, v6

    invoke-virtual/range {v10 .. v17}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    :cond_7
    iget-object v1, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lmiui/widget/DatePicker;->setMaxDate(J)V

    iget-object v1, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v1, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    iget-object v4, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    invoke-direct/range {p0 .. p0}, Lmiui/widget/DatePicker;->reorderSpinners()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_8
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    return-object p0
.end method

.method static synthetic access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$300(Lmiui/widget/DatePicker;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    return p0
.end method

.method static synthetic access$400(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$600(Lmiui/widget/DatePicker;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Lmiui/widget/DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DatePicker;->resetMonthsDisplayedValues()V

    return-void
.end method

.method static synthetic access$800(Lmiui/widget/DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$900(Lmiui/widget/DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method private isNewDate(III)Z
    .locals 2

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p1

    if-ne p1, p3, :cond_1

    iget-object p0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->get(I)I

    move-result p0

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyDateChanged()V
    .locals 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lmiui/widget/DatePicker;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getYear()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    iget-boolean v6, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lmiui/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lmiui/widget/DatePicker;IIIZ)V

    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Lmiui/date/Calendar;)Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lmiui/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    sget-object p0, Lmiui/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Date: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in format: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MM/dd/yyyy"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private reorderSpinners()V
    .locals 5

    iget-object v0, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDateFormatOrder:[C

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-char v3, v0, v2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    const/16 v4, 0x79

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    iget-object v3, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    :goto_1
    invoke-direct {p0, v3, v1, v2}, Lmiui/widget/DatePicker;->setImeOptions(Lmiui/widget/NumberPicker;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private resetMonthsDisplayedValues()V
    .locals 5

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    iput-object v0, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    sget-object v2, Lmiui/widget/DatePicker;->sChineseLeapYearMonths:[Ljava/lang/String;

    iput-object v2, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    sget-object v3, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    iget-object v2, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiui/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object p0, p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_3

    sget-object v2, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lmiui/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object p1, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiui/widget/DatePicker;->mNumberOfMonths:I

    invoke-direct {p0}, Lmiui/widget/DatePicker;->resetMonthsDisplayedValues()V

    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateFormatters()V

    return-void
.end method

.method private setDate(III)V
    .locals 8

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    iget-object p1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {p1, p2}, Lmiui/date/Calendar;->before(Lmiui/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object p0, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    :goto_0
    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {p1, p2}, Lmiui/date/Calendar;->after(Lmiui/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object p0, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setImeOptions(Lmiui/widget/NumberPicker;II)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    sget p2, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private updateFormatters()V
    .locals 2

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    iget-object p0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    new-instance v0, Lmiui/widget/NumberPicker$NumberFormatter;

    invoke-direct {v0}, Lmiui/widget/NumberPicker$NumberFormatter;-><init>()V

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSpinners()V
    .locals 12

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->date_picker_label_day:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->date_picker_label_month:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->date_picker_label_year:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    iget-boolean v3, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    const/16 v4, 0xa

    const/16 v5, 0x9

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v3, v5}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v3

    :goto_1
    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v6, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    const/16 v7, 0xb

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v6}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v6

    if-ltz v6, :cond_2

    const/16 v7, 0xc

    :cond_2
    invoke-virtual {v0, v7}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    const/4 v6, 0x2

    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iget-object v7, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v7, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x6

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v8, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    goto :goto_3

    :cond_4
    iget-object v8, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    :goto_3
    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v7, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-boolean v7, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v7, :cond_5

    move v7, v10

    goto :goto_4

    :cond_5
    move v7, v9

    :goto_4
    iget-object v8, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    iget-object v11, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v11, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_7

    iget-object v7, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    iget-boolean v8, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    goto :goto_5

    :cond_6
    iget-object v8, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    :goto_5
    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v7, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v7, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_7
    iget-object v7, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v7, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-ne v7, v0, :cond_b

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v7, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v7, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    goto :goto_6

    :cond_8
    iget-object v7, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v7, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    :goto_6
    invoke-virtual {v0, v7}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_9

    move v0, v10

    goto :goto_7

    :cond_9
    move v0, v9

    :goto_7
    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v7, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_b

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    goto :goto_8

    :cond_a
    iget-object v1, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    :goto_8
    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_b
    iget-object v0, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    iget-object v7, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v0, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_c

    sget-object v0, Lmiui/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v1

    sub-int/2addr v1, v2

    sget-object v7, Lmiui/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v0, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lmiui/widget/DatePicker;->isLunarMode()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v6

    goto :goto_9

    :cond_d
    move v0, v2

    :goto_9
    iget-object v1, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v7, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v7, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-le v1, v0, :cond_f

    :cond_e
    move v3, v2

    :cond_f
    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    goto :goto_a

    :cond_10
    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    :goto_a
    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eqz v3, :cond_12

    add-int/2addr v1, v2

    goto :goto_b

    :cond_11
    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v1, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    :cond_12
    :goto_b
    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    iget-object p0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    if-eqz v1, :cond_13

    invoke-virtual {p0, v4}, Lmiui/date/Calendar;->get(I)I

    move-result p0

    goto :goto_c

    :cond_13
    invoke-virtual {p0, v5}, Lmiui/date/Calendar;->get(I)I

    move-result p0

    :goto_c
    invoke-virtual {v0, p0}, Lmiui/widget/NumberPicker;->setValue(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-boolean p0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    :goto_0
    invoke-virtual {v0, p0}, Lmiui/date/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object p0, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object p0, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v0

    const/4 v1, 0x6

    iget-object p0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {p0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result p0

    if-eqz v0, :cond_1

    add-int/lit8 p0, p0, 0xc

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method public getSpinnersShown()Z
    .locals 0

    iget-object p0, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p0

    return p0
.end method

.method public getYear()I
    .locals 1

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-boolean p0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, p0}, Lmiui/date/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->setDate(III)V

    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    iput-object p4, p0, Lmiui/widget/DatePicker;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/DatePicker;->mIsEnabled:Z

    return p0
.end method

.method public isLunarMode()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lmiui/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Lmiui/widget/DatePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Lmiui/widget/DatePicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 p0, 0x380

    invoke-static {v0, v1, p0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    check-cast p1, Lmiui/widget/DatePicker$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-static {p1}, Lmiui/widget/DatePicker$SavedState;->access$1100(Lmiui/widget/DatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lmiui/widget/DatePicker$SavedState;->access$1200(Lmiui/widget/DatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Lmiui/widget/DatePicker$SavedState;->access$1300(Lmiui/widget/DatePicker$SavedState;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/DatePicker;->setDate(III)V

    invoke-static {p1}, Lmiui/widget/DatePicker$SavedState;->access$1400(Lmiui/widget/DatePicker$SavedState;)Z

    move-result p1

    iput-boolean p1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    new-instance v7, Lmiui/widget/DatePicker$SavedState;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZLmiui/widget/DatePicker$1;)V

    return-object v7
.end method

.method public setDateFormatOrder([C)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DatePicker;->mDateFormatOrder:[C

    invoke-direct {p0}, Lmiui/widget/DatePicker;->reorderSpinners()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-boolean p1, p0, Lmiui/widget/DatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setLunarMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    invoke-direct {p0}, Lmiui/widget/DatePicker;->resetMonthsDisplayedValues()V

    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    :cond_0
    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object p1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {p1, p2}, Lmiui/date/Calendar;->after(Lmiui/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_1
    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object p1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {p1, p2}, Lmiui/date/Calendar;->before(Lmiui/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object p2, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {p2}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_1
    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showDayPicker(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showMonthPicker(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showYearPicker(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->setDate(III)V

    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    invoke-direct {p0}, Lmiui/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method
