.class Landroid/widget/CalendarViewMaterialDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewMaterialDelegate.java"


# instance fields
.field private final mDayPickerView:Landroid/widget/DayPickerView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private final mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    new-instance v0, Landroid/widget/CalendarViewMaterialDelegate$1;

    invoke-direct {v0, p0}, Landroid/widget/CalendarViewMaterialDelegate$1;-><init>(Landroid/widget/CalendarViewMaterialDelegate;)V

    iput-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    new-instance v0, Landroid/widget/DayPickerView;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v1, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p1, v0}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method


# virtual methods
.method public getBoundsForDate(JLandroid/graphics/Rect;)Z
    .registers 10

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DayPickerView;->getBoundsForDate(JLandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    iget-object v3, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v3, v2}, Landroid/widget/DayPickerView;->getLocationOnScreen([I)V

    iget-object v3, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v3, v1}, Landroid/widget/CalendarView;->getLocationOnScreen([I)V

    const/4 v3, 0x1

    aget v4, v2, v3

    aget v5, v1, v3

    sub-int/2addr v4, v5

    iget v5, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->bottom:I

    return v3

    :cond_28
    const/4 v1, 0x0

    return v1
.end method

.method public getDate()J
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeekDayTextAppearance()I
    .registers 2

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public setDate(J)V
    .registers 5

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public setDate(JZZ)V
    .registers 6

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public setDateTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setDayTextAppearance(I)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .registers 4

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    return-void
.end method

.method public setMinDate(J)V
    .registers 4

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    return-void
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setDayOfWeekTextAppearance(I)V

    return-void
.end method
