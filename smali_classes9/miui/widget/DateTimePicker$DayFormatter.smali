.class public Lmiui/widget/DateTimePicker$DayFormatter;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const/16 p3, 0x1180

    invoke-static {p1, p2, p3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const/16 p0, 0x2400

    invoke-static {p2, p3, p0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    const-string v0, ""

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const/16 p2, 0x3580

    invoke-static {p0, p1, p2}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
