.class Lmiui/widget/DatePicker$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/DatePicker;


# direct methods
.method constructor <init>(Lmiui/widget/DatePicker;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .locals 5

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {v1}, Lmiui/widget/DatePicker;->access$000(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->access$200(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/16 v3, 0x9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {v4}, Lmiui/widget/DatePicker;->access$300(Lmiui/widget/DatePicker;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xa

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    sub-int/2addr p3, p2

    invoke-virtual {v0, v4, p3}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->access$400(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    iget-object v4, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {v4}, Lmiui/widget/DatePicker;->access$300(Lmiui/widget/DatePicker;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x6

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {p2}, Lmiui/widget/DatePicker;->access$500(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_6

    iget-object p2, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {p2}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object p2

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->access$300(Lmiui/widget/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    :goto_2
    iget-object p2, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {p2}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object p3

    invoke-virtual {p3, v1}, Lmiui/date/Calendar;->get(I)I

    move-result p3

    iget-object v0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {v1}, Lmiui/widget/DatePicker;->access$100(Lmiui/widget/DatePicker;)Lmiui/date/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    invoke-static {p2, p3, v0, v1}, Lmiui/widget/DatePicker;->access$600(Lmiui/widget/DatePicker;III)V

    iget-object p2, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {p2}, Lmiui/widget/DatePicker;->access$500(Lmiui/widget/DatePicker;)Lmiui/widget/NumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {p1}, Lmiui/widget/DatePicker;->access$700(Lmiui/widget/DatePicker;)V

    :cond_5
    iget-object p1, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {p1}, Lmiui/widget/DatePicker;->access$800(Lmiui/widget/DatePicker;)V

    iget-object p0, p0, Lmiui/widget/DatePicker$1;->this$0:Lmiui/widget/DatePicker;

    invoke-static {p0}, Lmiui/widget/DatePicker;->access$900(Lmiui/widget/DatePicker;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
