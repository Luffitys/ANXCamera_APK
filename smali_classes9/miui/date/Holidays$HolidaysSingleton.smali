.class Lmiui/date/Holidays$HolidaysSingleton;
.super Lmiui/util/SoftReferenceSingleton;
.source ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/date/Holidays$HolidaysSingleton$1;

    invoke-direct {v0}, Lmiui/date/Holidays$HolidaysSingleton$1;-><init>()V

    invoke-static {v0}, Lmiui/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/date/Holidays$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/date/Holidays$HolidaysSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/date/Holidays$HolidaysSingleton;->createInstance()Lmiui/date/Holidays;

    move-result-object p0

    return-object p0
.end method

.method protected createInstance()Lmiui/date/Holidays;
    .locals 1

    new-instance p0, Lmiui/date/Holidays;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/date/Holidays;-><init>(Lmiui/date/Holidays$1;)V

    return-object p0
.end method
