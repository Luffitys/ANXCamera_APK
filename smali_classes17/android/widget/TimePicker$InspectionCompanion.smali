.class public final Landroid/widget/TimePicker$InspectionCompanion;
.super Ljava/lang/Object;
.source "TimePicker$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/TimePicker;",
        ">;"
    }
.end annotation


# instance fields
.field private m24HourId:I

.field private mHourId:I

.field private mMinuteId:I

.field private mPropertiesMapped:Z

.field private mTimePickerModeId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 7

    const-string v0, "24Hour"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->m24HourId:I

    const-string v0, "hour"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mHourId:I

    const-string/jumbo v0, "minute"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mMinuteId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    const-string/jumbo v2, "spinner"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x2

    const-string v3, "clock"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v2, v0}, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v3, "timePickerMode"

    const v4, 0x10104b4

    invoke-interface {p1, v3, v4, v2}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, p0, Landroid/widget/TimePicker$InspectionCompanion;->mTimePickerModeId:I

    iput-boolean v1, p0, Landroid/widget/TimePicker$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/TimePicker;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_29

    iget v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->m24HourId:I

    invoke-virtual {p1}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mHourId:I

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getHour()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mMinuteId:I

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getMinute()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TimePicker$InspectionCompanion;->mTimePickerModeId:I

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    return-void

    :cond_29
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/TimePicker;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TimePicker$InspectionCompanion;->readProperties(Landroid/widget/TimePicker;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
