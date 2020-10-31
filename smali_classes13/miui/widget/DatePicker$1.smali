.class Lmiui/widget/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DatePicker;


# direct methods
.method constructor <init>(Lmiui/widget/DatePicker;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .registers 10

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mCurrentDate:Lmiui/date/Calendar;
    invoke-static {v1}, Lmiui/widget/DatePicker;->access$000(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mDaySpinner:Lmiui/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$200(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/16 v3, 0x9

    if-ne p1, v0, :cond_37

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mIsLunarMode:Z
    invoke-static {v4}, Lmiui/widget/DatePicker;->access$300(Lmiui/widget/DatePicker;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/16 v4, 0xa

    goto :goto_31

    :cond_30
    move v4, v3

    :goto_31
    sub-int v5, p3, p2

    invoke-virtual {v0, v4, v5}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_72

    :cond_37
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mMonthSpinner:Lmiui/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$400(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_56

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mIsLunarMode:Z
    invoke-static {v4}, Lmiui/widget/DatePicker;->access$300(Lmiui/widget/DatePicker;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v4, 0x6

    goto :goto_50

    :cond_4f
    move v4, v2

    :goto_50
    sub-int v5, p3, p2

    invoke-virtual {v0, v4, v5}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_72

    :cond_56
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$500(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_ab

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mIsLunarMode:Z
    invoke-static {v4}, Lmiui/widget/DatePicker;->access$300(Lmiui/widget/DatePicker;)Z

    move-result v4

    if-eqz v4, :cond_6e

    const/4 v4, 0x2

    goto :goto_6f

    :cond_6e
    move v4, v1

    :goto_6f
    invoke-virtual {v0, v4, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    :goto_72
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v4

    invoke-virtual {v4, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v4}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v4

    invoke-virtual {v4, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mTempDate:Lmiui/date/Calendar;
    invoke-static {v4}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    # invokes: Lmiui/widget/DatePicker;->setDate(III)V
    invoke-static {v0, v1, v2, v3}, Lmiui/widget/DatePicker;->access$600(Lmiui/widget/DatePicker;III)V

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # getter for: Lmiui/widget/DatePicker;->mYearSpinner:Lmiui/widget/NumberPicker;
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$500(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_a0

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # invokes: Lmiui/widget/DatePicker;->resetMonthsDisplayedValues()V
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$700(Lmiui/widget/DatePicker;)V

    :cond_a0
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # invokes: Lmiui/widget/DatePicker;->updateSpinners()V
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$800(Lmiui/widget/DatePicker;)V

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    # invokes: Lmiui/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lmiui/widget/DatePicker;->access$900(Lmiui/widget/DatePicker;)V

    return-void

    :cond_ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
