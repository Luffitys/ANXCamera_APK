.class Lmiui/widget/DateTimePicker$PickerValueChangeListener;
.super Ljava/lang/Object;
.source "DateTimePicker.java"

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickerValueChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DateTimePicker;


# direct methods
.method private constructor <init>(Lmiui/widget/DateTimePicker;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/DateTimePicker;Lmiui/widget/DateTimePicker$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiui/widget/DateTimePicker;)V

    return-void
.end method

.method private notifyTimeChanged(Lmiui/widget/DateTimePicker;)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmiui/widget/DateTimePicker;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1200(Lmiui/widget/DateTimePicker;)Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1200(Lmiui/widget/DateTimePicker;)Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-virtual {v1}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;->onDateTimeChanged(Lmiui/widget/DateTimePicker;J)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .registers 8

    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mDayPicker:Lmiui/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$200(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_33

    nop

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mDayLastValue:I
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$300(Lmiui/widget/DateTimePicker;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, -0x1

    :goto_1d
    move v0, v1

    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;
    invoke-static {v1}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Lmiui/date/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v2

    # setter for: Lmiui/widget/DateTimePicker;->mDayLastValue:I
    invoke-static {v1, v2}, Lmiui/widget/DateTimePicker;->access$302(Lmiui/widget/DateTimePicker;I)I

    goto :goto_75

    :cond_33
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$500(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_51

    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Lmiui/date/Calendar;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mHourPicker:Lmiui/widget/NumberPicker;
    invoke-static {v2}, Lmiui/widget/DateTimePicker;->access$500(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    goto :goto_75

    :cond_51
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$600(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_75

    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mCalendar:Lmiui/date/Calendar;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Lmiui/date/Calendar;

    move-result-object v0

    const/16 v1, 0x14

    iget-object v2, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mMinuteInterval:I
    invoke-static {v2}, Lmiui/widget/DateTimePicker;->access$700(Lmiui/widget/DateTimePicker;)I

    move-result v2

    iget-object v3, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # getter for: Lmiui/widget/DateTimePicker;->mMinutePicker:Lmiui/widget/NumberPicker;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$600(Lmiui/widget/DateTimePicker;)Lmiui/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    :cond_75
    :goto_75
    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # invokes: Lmiui/widget/DateTimePicker;->checkCurrentTime()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$800(Lmiui/widget/DateTimePicker;)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # invokes: Lmiui/widget/DateTimePicker;->updateDayPicker()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$900(Lmiui/widget/DateTimePicker;)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # invokes: Lmiui/widget/DateTimePicker;->updateHourPicker()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1000(Lmiui/widget/DateTimePicker;)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    # invokes: Lmiui/widget/DateTimePicker;->updateMinutePicker()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$1100(Lmiui/widget/DateTimePicker;)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0, v0}, Lmiui/widget/DateTimePicker$PickerValueChangeListener;->notifyTimeChanged(Lmiui/widget/DateTimePicker;)V

    return-void
.end method
