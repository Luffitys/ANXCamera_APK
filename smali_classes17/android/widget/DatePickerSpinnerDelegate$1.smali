.class Landroid/widget/DatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "DatePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePickerSpinnerDelegate;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .registers 10

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePickerSpinnerDelegate;->updateInputState()V
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$000(Landroid/widget/DatePickerSpinnerDelegate;)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    iget-object v1, v1, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p1, v0, :cond_54

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    if-ne p2, v0, :cond_3a

    if-ne p3, v4, :cond_3a

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_53

    :cond_3a
    if-ne p2, v4, :cond_48

    if-ne p3, v0, :cond_48

    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;
    invoke-static {v5}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_53

    :cond_48
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;
    invoke-static {v1}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    sub-int v5, p3, p2

    invoke-virtual {v1, v3, v5}, Landroid/icu/util/Calendar;->add(II)V

    :goto_53
    goto :goto_97

    :cond_54
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$300(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_86

    const/16 v0, 0xb

    if-ne p2, v0, :cond_6c

    if-nez p3, :cond_6c

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_97

    :cond_6c
    if-nez p2, :cond_7a

    if-ne p3, v0, :cond_7a

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_97

    :cond_7a
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    sub-int v1, p3, p2

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_97

    :cond_86
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$400(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_c8

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Landroid/icu/util/Calendar;->set(II)V

    :goto_97
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;
    invoke-static {v4}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;
    invoke-static {v4}, Landroid/widget/DatePickerSpinnerDelegate;->access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    # invokes: Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->access$500(Landroid/widget/DatePickerSpinnerDelegate;III)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$600(Landroid/widget/DatePickerSpinnerDelegate;)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$700(Landroid/widget/DatePickerSpinnerDelegate;)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V
    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->access$800(Landroid/widget/DatePickerSpinnerDelegate;)V

    return-void

    :cond_c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
