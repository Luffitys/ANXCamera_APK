.class public Landroid/util/DayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "DayOfMonthCursor.java"


# instance fields
.field private mColumn:I

.field private mRow:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0, p1, p2, p4}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    invoke-virtual {p0, p3}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    invoke-virtual {p0, p3}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return-void
.end method


# virtual methods
.method public down()Z
    .registers 4

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    return v2

    :cond_13
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->nextMonth()V

    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    :goto_18
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_28

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    goto :goto_18

    :cond_28
    return v1
.end method

.method public getSelectedColumn()I
    .registers 2

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .registers 3

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .registers 3

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    if-nez v0, :cond_12

    const/4 v0, -0x1

    return v0

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public getSelectedRow()I
    .registers 2

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    return v0
.end method

.method public isSelected(II)Z
    .registers 4

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public left()Z
    .registers 4

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    const/4 v1, 0x1

    if-nez v0, :cond_e

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_11

    :cond_e
    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    :goto_11
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    return v0

    :cond_1d
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->previousMonth()V

    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v2

    iput v2, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    invoke-virtual {p0, v0}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result v2

    iput v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return v1
.end method

.method public right()Z
    .registers 5

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_f

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iput v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_12

    :cond_f
    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    :goto_12
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v3, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v3}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->nextMonth()V

    iput v1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iput v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    :goto_24
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v1, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_34

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    goto :goto_24

    :cond_34
    return v2
.end method

.method public setSelectedDayOfMonth(I)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    invoke-virtual {p0, p1}, Landroid/util/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return-void
.end method

.method public setSelectedRowColumn(II)V
    .registers 3

    iput p1, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iput p2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    return-void
.end method

.method public up()Z
    .registers 4

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    const/4 v0, 0x0

    return v0

    :cond_13
    invoke-virtual {p0}, Landroid/util/DayOfMonthCursor;->previousMonth()V

    const/4 v0, 0x5

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    :goto_19
    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    iget v2, p0, Landroid/util/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v2}, Landroid/util/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_29

    iget v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/DayOfMonthCursor;->mRow:I

    goto :goto_19

    :cond_29
    return v1
.end method
