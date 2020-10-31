.class public final Landroid/widget/DatePicker$InspectionCompanion;
.super Ljava/lang/Object;
.source "DatePicker$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/DatePicker;",
        ">;"
    }
.end annotation


# instance fields
.field private mCalendarViewShownId:I

.field private mDatePickerModeId:I

.field private mDayOfMonthId:I

.field private mFirstDayOfWeekId:I

.field private mMaxDateId:I

.field private mMinDateId:I

.field private mMonthId:I

.field private mPropertiesMapped:Z

.field private mSpinnersShownId:I

.field private mYearId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 7

    const-string v0, "calendarViewShown"

    const v1, 0x101034c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mCalendarViewShownId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    const-string/jumbo v2, "spinner"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x2

    const-string v3, "calendar"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v2, v0}, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v3, "datePickerMode"

    const v4, 0x10104b3

    invoke-interface {p1, v3, v4, v2}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker$InspectionCompanion;->mDatePickerModeId:I

    const-string v2, "dayOfMonth"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker$InspectionCompanion;->mDayOfMonthId:I

    const-string v2, "firstDayOfWeek"

    const v4, 0x101033d

    invoke-interface {p1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker$InspectionCompanion;->mFirstDayOfWeekId:I

    const-string/jumbo v2, "maxDate"

    const v4, 0x1010340

    invoke-interface {p1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapLong(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMaxDateId:I

    const-string/jumbo v2, "minDate"

    const v4, 0x101033f

    invoke-interface {p1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapLong(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMinDateId:I

    const-string/jumbo v2, "month"

    invoke-interface {p1, v2, v3}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMonthId:I

    const-string/jumbo v2, "spinnersShown"

    const v4, 0x101034b

    invoke-interface {p1, v2, v4}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker$InspectionCompanion;->mSpinnersShownId:I

    const-string/jumbo v2, "year"

    invoke-interface {p1, v2, v3}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker$InspectionCompanion;->mYearId:I

    iput-boolean v1, p0, Landroid/widget/DatePicker$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/DatePicker;Landroid/view/inspector/PropertyReader;)V
    .registers 6

    iget-boolean v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_56

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mCalendarViewShownId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getCalendarViewShown()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mDatePickerModeId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mDayOfMonthId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mFirstDayOfWeekId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getFirstDayOfWeek()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMaxDateId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroid/view/inspector/PropertyReader;->readLong(IJ)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMinDateId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroid/view/inspector/PropertyReader;->readLong(IJ)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMonthId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mSpinnersShownId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getSpinnersShown()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mYearId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    return-void

    :cond_56
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/DatePicker;

    invoke-virtual {p0, p1, p2}, Landroid/widget/DatePicker$InspectionCompanion;->readProperties(Landroid/widget/DatePicker;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
