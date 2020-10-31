.class public Lmiui/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DatePicker$SavedState;,
        Lmiui/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


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
    .registers 5

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

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    :goto_25
    sget-object v2, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_48

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

    goto :goto_25

    :cond_48
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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/miui/internal/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 32

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

    sget v7, Lcom/miui/internal/R$styleable;->DatePicker_spinnersShown:I

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    sget v8, Lcom/miui/internal/R$styleable;->DatePicker_startYear:I

    const/16 v9, 0x76c

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    sget v9, Lcom/miui/internal/R$styleable;->DatePicker_endYear:I

    const/16 v10, 0x834

    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    sget v10, Lcom/miui/internal/R$styleable;->DatePicker_minDate:I

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget v10, Lcom/miui/internal/R$styleable;->DatePicker_maxDate:I

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v13, Lcom/miui/internal/R$layout;->date_picker:I

    sget v10, Lcom/miui/internal/R$styleable;->DatePicker_lunarCalendar:I

    invoke-virtual {v4, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    sget v10, Lcom/miui/internal/R$styleable;->DatePicker_showYear:I

    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    sget v10, Lcom/miui/internal/R$styleable;->DatePicker_showMonth:I

    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v20

    sget v10, Lcom/miui/internal/R$styleable;->DatePicker_showDay:I

    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v0, v10}, Lmiui/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    nop

    const-string v10, "layout_inflater"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroid/view/LayoutInflater;

    invoke-virtual {v12, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v10, Lmiui/widget/DatePicker$1;

    invoke-direct {v10, v0}, Lmiui/widget/DatePicker$1;-><init>(Lmiui/widget/DatePicker;)V

    move-object v11, v10

    sget v10, Lcom/miui/internal/R$id;->pickers:I

    invoke-virtual {v0, v10}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, v0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    sget v10, Lcom/miui/internal/R$id;->day:I

    invoke-virtual {v0, v10}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lmiui/widget/NumberPicker;

    iput-object v10, v0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {v10, v2, v3}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v10, v0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v10, v11}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    const/16 v10, 0x8

    if-nez v21, :cond_be

    iget-object v2, v0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v10}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    :cond_be
    sget v2, Lcom/miui/internal/R$id;->month:I

    invoke-virtual {v0, v2}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/NumberPicker;

    iput-object v2, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v2, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget v3, v0, Lmiui/widget/DatePicker;->mNumberOfMonths:I

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v2, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-object v3, v0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v2, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    move-object v3, v11

    const-wide/16 v10, 0xc8

    invoke-virtual {v2, v10, v11}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v2, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    if-nez v20, :cond_f4

    iget-object v2, v0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    :cond_f4
    sget v2, Lcom/miui/internal/R$id;->year:I

    invoke-virtual {v0, v2}, Lmiui/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/NumberPicker;

    iput-object v2, v0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    const-wide/16 v10, 0x64

    invoke-virtual {v2, v10, v11}, Lmiui/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v2, v0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v2, v3}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V

    if-nez v19, :cond_111

    iget-object v2, v0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    :cond_111
    invoke-direct/range {p0 .. p0}, Lmiui/widget/DatePicker;->updateFormatters()V

    if-nez v7, :cond_11b

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/widget/DatePicker;->setSpinnersShown(Z)V

    goto :goto_11e

    :cond_11b
    invoke-virtual {v0, v7}, Lmiui/widget/DatePicker;->setSpinnersShown(Z)V

    :goto_11e
    iget-object v2, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v10, v11}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_164

    iget-object v2, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-direct {v0, v15, v2}, Lmiui/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiui/date/Calendar;)Z

    move-result v2

    if-nez v2, :cond_15b

    iget-object v2, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v10, v2

    move-object v2, v3

    move v11, v8

    move-object v3, v12

    move/from16 v12, v16

    move/from16 v25, v13

    move/from16 v13, v17

    move-object/from16 v26, v14

    move/from16 v14, v18

    move-object/from16 v27, v15

    move/from16 v15, v22

    move/from16 v16, v23

    move/from16 v17, v24

    invoke-virtual/range {v10 .. v17}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    goto :goto_17a

    :cond_15b
    move-object v2, v3

    move-object v3, v12

    move/from16 v25, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    goto :goto_17a

    :cond_164
    move-object v2, v3

    move-object v3, v12

    move/from16 v25, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    iget-object v10, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v11, v8

    invoke-virtual/range {v10 .. v17}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    :goto_17a
    iget-object v10, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v10}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lmiui/widget/DatePicker;->setMinDate(J)V

    iget-object v10, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1b2

    iget-object v10, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    move-object/from16 v15, v26

    invoke-direct {v0, v15, v10}, Lmiui/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiui/date/Calendar;)Z

    move-result v10

    if-nez v10, :cond_1af

    iget-object v11, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/16 v13, 0xb

    const/16 v14, 0x1f

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v12, v9

    move-object/from16 v22, v15

    move v15, v10

    invoke-virtual/range {v11 .. v18}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    goto :goto_1c5

    :cond_1af
    move-object/from16 v22, v15

    goto :goto_1c5

    :cond_1b2
    move-object/from16 v22, v26

    iget-object v11, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/16 v13, 0xb

    const/16 v14, 0x1f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v12, v9

    invoke-virtual/range {v11 .. v18}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    :goto_1c5
    iget-object v10, v0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v10}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lmiui/widget/DatePicker;->setMaxDate(J)V

    iget-object v10, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v10, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    iget-object v12, v0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 v13, 0x9

    invoke-virtual {v12, v13}, Lmiui/date/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Lmiui/widget/DatePicker;->init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V

    invoke-direct/range {p0 .. p0}, Lmiui/widget/DatePicker;->reorderSpinners()V

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/DatePicker;->getImportantForAccessibility()I

    move-result v10

    if-nez v10, :cond_1fe

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lmiui/widget/DatePicker;->setImportantForAccessibility(I)V

    :cond_1fe
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/widget/DatePicker;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    return v0
.end method

.method static synthetic access$400(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/DatePicker;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Lmiui/widget/DatePicker;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/DatePicker;->resetMonthsDisplayedValues()V

    return-void
.end method

.method static synthetic access$800(Lmiui/widget/DatePicker;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$900(Lmiui/widget/DatePicker;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method private isNewDate(III)Z
    .registers 7

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1f

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-ne v0, p3, :cond_1f

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    nop

    :goto_20
    return v1
.end method

.method private notifyDateChanged()V
    .registers 8

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/DatePicker;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lmiui/widget/DatePicker;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getYear()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    iget-boolean v6, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lmiui/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lmiui/widget/DatePicker;IIIZ)V

    :cond_1a
    return-void
.end method

.method private parseDate(Ljava/lang/String;Lmiui/date/Calendar;)Z
    .registers 7

    :try_start_0
    iget-object v0, p0, Lmiui/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_d} :catch_f

    const/4 v0, 0x1

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lmiui/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private reorderSpinners()V
    .registers 6

    iget-object v0, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDateFormatOrder:[C

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    goto :goto_14

    :cond_12
    iget-object v0, p0, Lmiui/widget/DatePicker;->mDateFormatOrder:[C

    :goto_14
    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_56

    aget-char v3, v0, v2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_46

    const/16 v4, 0x64

    if-eq v3, v4, :cond_39

    const/16 v4, 0x79

    if-ne v3, v4, :cond_33

    iget-object v3, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lmiui/widget/DatePicker;->setImeOptions(Lmiui/widget/NumberPicker;II)V

    goto :goto_53

    :cond_33
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_39
    iget-object v3, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lmiui/widget/DatePicker;->setImeOptions(Lmiui/widget/NumberPicker;II)V

    goto :goto_53

    :cond_46
    iget-object v3, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lmiui/widget/DatePicker;->setImeOptions(Lmiui/widget/NumberPicker;II)V

    nop

    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_56
    return-void
.end method

.method private resetMonthsDisplayedValues()V
    .registers 7

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v0

    if-gez v0, :cond_11

    sget-object v1, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    iput-object v1, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_45

    :cond_11
    sget-object v1, Lmiui/widget/DatePicker;->sChineseLeapYearMonths:[Ljava/lang/String;

    iput-object v1, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    sget-object v2, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lmiui/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    iget-object v2, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_45
    goto :goto_7c

    :cond_46
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_7c

    :cond_63
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_6a
    iget-object v1, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_7c

    sget-object v2, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    :cond_7c
    :goto_7c
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lmiui/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/DatePicker;->mNumberOfMonths:I

    invoke-direct {p0}, Lmiui/widget/DatePicker;->resetMonthsDisplayedValues()V

    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateFormatters()V

    return-void
.end method

.method private setDate(III)V
    .registers 12

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->before(Lmiui/date/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    goto :goto_37

    :cond_22
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->after(Lmiui/date/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_37
    :goto_37
    return-void
.end method

.method private setImeOptions(Lmiui/widget/NumberPicker;II)V
    .registers 6

    add-int/lit8 v0, p2, -0x1

    if-ge p3, v0, :cond_6

    const/4 v0, 0x5

    goto :goto_7

    :cond_6
    const/4 v0, 0x6

    :goto_7
    sget v1, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p1, v1}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private updateFormatters()V
    .registers 3

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    if-nez v1, :cond_9

    goto :goto_19

    :cond_9
    sget-object v1, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    new-instance v1, Lmiui/widget/NumberPicker$NumberFormatter;

    invoke-direct {v1}, Lmiui/widget/NumberPicker$NumberFormatter;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setFormatter(Lmiui/widget/NumberPicker$Formatter;)V

    return-void

    :cond_19
    :goto_19
    return-void
.end method

.method private updateSpinners()V
    .registers 14

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    goto :goto_42

    :cond_15
    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->date_picker_label_day:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->date_picker_label_month:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {p0}, Lmiui/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$string;->date_picker_label_year:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    :goto_42
    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    iget-boolean v3, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    const/16 v4, 0xa

    const/16 v5, 0x9

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v3

    goto :goto_64

    :cond_5e
    iget-object v3, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v3, v5}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v3

    :goto_64
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

    if-eqz v6, :cond_89

    iget-object v6, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v6}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v6

    if-ltz v6, :cond_89

    const/16 v7, 0xc

    :cond_89
    invoke-virtual {v0, v7}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    const/4 v6, 0x2

    if-eqz v0, :cond_98

    move v0, v6

    goto :goto_99

    :cond_98
    move v0, v2

    :goto_99
    iget-object v7, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v7, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x6

    if-ne v7, v8, :cond_f4

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v8, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v8, :cond_b6

    iget-object v8, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    goto :goto_bc

    :cond_b6
    iget-object v8, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    :goto_bc
    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v7, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-boolean v7, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v7, :cond_ca

    move v7, v10

    goto :goto_cb

    :cond_ca
    move v7, v9

    :goto_cb
    iget-object v8, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    iget-object v11, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v11, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    if-ne v8, v11, :cond_f4

    iget-object v8, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    iget-boolean v11, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v11, :cond_e6

    iget-object v11, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v11, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    goto :goto_ec

    :cond_e6
    iget-object v11, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v11, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    :goto_ec
    invoke-virtual {v8, v11}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v8, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_f4
    iget-object v7, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v7, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_152

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v8, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v8, :cond_10f

    iget-object v8, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    goto :goto_115

    :cond_10f
    iget-object v8, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    :goto_115
    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v7, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v7, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_128

    move v1, v10

    goto :goto_129

    :cond_128
    move v1, v9

    :goto_129
    iget-object v7, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v7, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_152

    iget-object v7, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    iget-boolean v8, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v8, :cond_144

    iget-object v8, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    goto :goto_14a

    :cond_144
    iget-object v8, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v8, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    :goto_14a
    invoke-virtual {v7, v8}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v7, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v7, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_152
    iget-object v1, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v7}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v7

    iget-object v8, p0, Lmiui/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v8, v8

    invoke-static {v1, v7, v8}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v7, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v7, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-boolean v7, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v7, :cond_184

    sget-object v7, Lmiui/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    iget-object v8, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v8}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v8

    sub-int/2addr v8, v2

    sget-object v11, Lmiui/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    array-length v11, v11

    invoke-static {v7, v8, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, [Ljava/lang/String;

    iget-object v7, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v7, v1}, Lmiui/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_184
    invoke-virtual {p0}, Lmiui/widget/DatePicker;->isLunarMode()Z

    move-result v7

    if-eqz v7, :cond_18c

    move v7, v6

    goto :goto_18d

    :cond_18c
    move v7, v2

    :goto_18d
    iget-object v8, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    iget-object v11, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v11, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v8, v11}, Lmiui/widget/NumberPicker;->setMinValue(I)V

    iget-object v8, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    iget-object v11, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v11, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v8, v11}, Lmiui/widget/NumberPicker;->setMaxValue(I)V

    iget-object v8, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v8, v3}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v8, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v8}, Lmiui/date/Calendar;->getChineseLeapMonth()I

    move-result v8

    if-ltz v8, :cond_1c1

    iget-object v11, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v11}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v11

    if-nez v11, :cond_1c0

    iget-object v11, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v11, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v11

    if-le v11, v8, :cond_1c1

    :cond_1c0
    move v3, v2

    :cond_1c1
    iget-object v11, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v12, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v12, :cond_1ce

    iget-object v12, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v12, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    goto :goto_1d4

    :cond_1ce
    iget-object v6, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v6, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    :goto_1d4
    invoke-virtual {v11, v6}, Lmiui/widget/NumberPicker;->setValue(I)V

    iget-object v6, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    iget-boolean v11, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v11, :cond_1ee

    if-eqz v3, :cond_1e7

    iget-object v9, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v9, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v2

    goto :goto_1f4

    :cond_1e7
    iget-object v2, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v2, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    goto :goto_1f4

    :cond_1ee
    iget-object v2, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v2, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    :goto_1f4
    invoke-virtual {v6, v9}, Lmiui/widget/NumberPicker;->setValue(I)V

    iget-object v2, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    iget-boolean v6, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v6, :cond_204

    iget-object v5, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v5, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    goto :goto_20a

    :cond_204
    iget-object v4, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    :goto_20a
    invoke-virtual {v2, v4}, Lmiui/widget/NumberPicker;->setValue(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

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

    invoke-virtual {p0, p1}, Lmiui/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getDayOfMonth()I
    .registers 3

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    goto :goto_b

    :cond_9
    const/16 v1, 0x9

    :goto_b
    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .registers 3

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .registers 3

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v0}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    goto :goto_24

    :cond_16
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    goto :goto_24

    :cond_1d
    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    :goto_24
    return v0
.end method

.method public getSpinnersShown()Z
    .registers 2

    iget-object v0, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 3

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-boolean v1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    :cond_8
    const/4 v1, 0x1

    :goto_9
    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILmiui/widget/DatePicker$OnDateChangedListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->setDate(III)V

    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    iput-object p4, p0, Lmiui/widget/DatePicker;->mOnDateChangedListener:Lmiui/widget/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLunarMode()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lmiui/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/16 v0, 0x380

    iget-object v1, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x380

    invoke-static {v1, v2, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    move-object v0, p1

    check-cast v0, Lmiui/widget/DatePicker$SavedState;

    invoke-virtual {v0}, Lmiui/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    # getter for: Lmiui/widget/DatePicker$SavedState;->mYear:I
    invoke-static {v0}, Lmiui/widget/DatePicker$SavedState;->access$1100(Lmiui/widget/DatePicker$SavedState;)I

    move-result v1

    # getter for: Lmiui/widget/DatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Lmiui/widget/DatePicker$SavedState;->access$1200(Lmiui/widget/DatePicker$SavedState;)I

    move-result v2

    # getter for: Lmiui/widget/DatePicker$SavedState;->mDay:I
    invoke-static {v0}, Lmiui/widget/DatePicker$SavedState;->access$1300(Lmiui/widget/DatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lmiui/widget/DatePicker;->setDate(III)V

    # getter for: Lmiui/widget/DatePicker$SavedState;->mIsLunar:Z
    invoke-static {v0}, Lmiui/widget/DatePicker$SavedState;->access$1400(Lmiui/widget/DatePicker$SavedState;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 13

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v7

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    new-instance v11, Lmiui/widget/DatePicker$SavedState;

    iget-boolean v5, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    const/4 v6, 0x0

    move-object v0, v11

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lmiui/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZLmiui/widget/DatePicker$1;)V

    return-object v11
.end method

.method public setDateFormatOrder([C)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DatePicker;->mDateFormatOrder:[C

    invoke-direct {p0}, Lmiui/widget/DatePicker;->reorderSpinners()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lmiui/widget/NumberPicker;->setEnabled(Z)V

    iput-boolean p1, p0, Lmiui/widget/DatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setLunarMode(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    if-eq p1, v0, :cond_c

    iput-boolean p1, p0, Lmiui/widget/DatePicker;->mIsLunarMode:Z

    invoke-direct {p0}, Lmiui/widget/DatePicker;->resetMonthsDisplayedValues()V

    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    :cond_c
    return-void
.end method

.method public setMaxDate(J)V
    .registers 6

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_25

    return-void

    :cond_25
    iget-object v0, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->after(Lmiui/date/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMaxDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_3f
    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .registers 6

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v2, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_25

    return-void

    :cond_25
    iget-object v0, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->before(Lmiui/date/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DatePicker;->mMinDate:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_3f
    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showDayPicker(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    return-void
.end method

.method public showMonthPicker(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    return-void
.end method

.method public showYearPicker(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setVisibility(I)V

    return-void
.end method

.method public updateDate(III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/DatePicker;->setDate(III)V

    invoke-direct {p0}, Lmiui/widget/DatePicker;->updateSpinners()V

    invoke-direct {p0}, Lmiui/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method
