.class Lmiui/date/Holidays$1;
.super Lmiui/util/Pools$Manager;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/date/Holidays$1;->createInstance()Lmiui/date/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public createInstance()Lmiui/date/Calendar;
    .locals 0

    new-instance p0, Lmiui/date/Calendar;

    invoke-direct {p0}, Lmiui/date/Calendar;-><init>()V

    return-object p0
.end method
