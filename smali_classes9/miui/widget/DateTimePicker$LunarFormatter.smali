.class public Lmiui/widget/DateTimePicker$LunarFormatter;
.super Lmiui/widget/DateTimePicker$DayFormatter;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DateTimePicker$DayFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public formatDay(III)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmiui/widget/DateTimePicker;->access$100()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/date/Calendar;

    if-nez p0, :cond_0

    new-instance p0, Lmiui/date/Calendar;

    invoke-direct {p0}, Lmiui/date/Calendar;-><init>()V

    invoke-static {}, Lmiui/widget/DateTimePicker;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    const/16 p1, 0x9

    invoke-virtual {p0, p1, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$string;->fmt_chinese_date:I

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
